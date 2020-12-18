/*
 * logicsm.c
 *
 *  Created on: 3 déc. 2020
 *      Author: jeann
 */

#include <stdlib.h>
#include "logicsm.h"

void initLogic(void){
	state = STATE_INITIAL;
}

void processLogic(int event){
	oldState = state;
	switch (state){
	case STATE_INITIAL:
		if (event == initSig){
			state = SLEEP;
		}
		break;
	case SLEEP:
		if (event == goSleepSig){
			state = SLEEP;
		}
		if (event == tansmitSig){
			state = TRANSMIT_DATA;
		}
		if (event == doMeasureSig){
			state = MEASURE;
		}
		break;
	case TRANSMIT_DATA:
		if (event == goSleepSig){
			state = SLEEP;
		}
		break;
	case MEASURE:
		if (event == goSleepSig){
			state = SLEEP;
		}
		break;
	}

	if (1){
		switch (state){
		case SLEEP:
			goToSleep();
			break;
		case TRANSMIT_DATA:
			transmitData();
			state = SLEEP;
			break;
		case MEASURE:
			startMeasure();
			state = TRANSMIT_DATA;
			break;
		}
	}
}
void goToSleep(){
	log_info(".");
	lowPower_delayMs(20000);
}

void transmitData(void){
	log_info("Try to join LoRaWAN...\r\n");
	static itsdk_lorawan_channelInit_t channels= ITSDK_LORAWAN_CHANNEL;
	#ifdef ITSDK_LORAWAN_CHANNEL
		itsdk_lorawan_setup(__LORAWAN_REGION_EU868,&channels);
	#else
		itsdk_lorawan_setup(__LORAWAN_REGION_EU868,NULL);
	#endif


	while ( !itsdk_lorawan_hasjoined() ) {
		itsdk_lorawan_join_sync();
	}

	log_info("Fire a LoRaWAN message ");
	//uint8_t t[20] = {'H','e','l','l','o',' ','W','o','r','l','d'};
	uint8_t port=10;
	uint8_t size=16;
	uint8_t rx[16];
	itsdk_lorawan_send_t r = itsdk_lorawan_send_sync(
			tabToPrint,						// Payload
			5,						// Payload size
			10,						// Port
			__LORAWAN_DR_5,			// Speed
			LORAWAN_SEND_ACKED,	// With a ack
			ITSDK_LORAWAN_CNF_RETRY,// And default retry
			&port,					// In case of reception - Port (uint8_t)
			&size,					// In case of reception - Size (uint8_t) - init with buffer max size
			rx,						// In case of recpetion - Data (uint8_t[] bcopied)
			PAYLOAD_ENCRYPT_NONE	// End to End encryption mode
	);
	if ( r == LORAWAN_SEND_SENT || r == LORAWAN_SEND_ACKED || LORAWAN_SEND_ACKED_WITH_DOWNLINK) {
		log_info("success !\r\n",r);
	} else {
		log_info("failed (%d)\r\n",r);
	}
}

void startMeasure(void){
	log_info("Start the measure...\r\n");

	HAL_GPIO_WritePin(SONICEN_GPIO_Port, SONICEN_Pin, GPIO_PIN_SET);
	HAL_Delay(2500);
	HAL_UART_Receive_IT(&huart1, &byte, 1); //On lance une mesure
	HAL_Delay(1500);
	HAL_UART_Receive_IT(&huart1, &byte, 1); //On lance une mesure
	HAL_Delay(1500);

	log_info("Distance ");
	HAL_UART_Transmit(&huart2, &tabToPrint[0], 5, 500);
	log_info("\nwill be sent !\r\n");
	HAL_GPIO_WritePin(SONICEN_GPIO_Port, SONICEN_Pin, GPIO_PIN_RESET);
	  //waitMeasure = true; //Doit être fait pas l'interrupt et doit tomber dans un etat nop en attendant l'interrupt

}
