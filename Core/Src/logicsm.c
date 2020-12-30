/*
 * logicsm.c
 *
 *  Created on: 3 déc. 2020
 *      Author: jeann
 */

#include <stdlib.h>
#include "logicsm.h"
#include <stdio.h>
#include <stdbool.h>


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
			if(startMeasure()){
				state = TRANSMIT_DATA;
			}
			else {
				state = SLEEP;
			}
			break;
		}
	}
}
void goToSleep(){
	log_info("-");
	lowPower_delayMs(20000);
}

void transmitData(void){
	log_info("\nTransmit, try to connect to LoRaWan...\r\n");
	static itsdk_lorawan_channelInit_t channels= ITSDK_LORAWAN_CHANNEL;
	#ifdef ITSDK_LORAWAN_CHANNEL
		itsdk_lorawan_setup(__LORAWAN_REGION_EU868,&channels);
	#else
		itsdk_lorawan_setup(__LORAWAN_REGION_EU868,NULL);
	#endif


	while ( !itsdk_lorawan_hasjoined() ) {
		itsdk_lorawan_join_sync();
	}

	log_info("Connected ! Fire a LoRaWAN message ");
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
			1,// And default retry
			&port,					// In case of reception - Port (uint8_t)
			&size,					// In case of reception - Size (uint8_t) - init with buffer max size
			rx,						// In case of recpetion - Data (uint8_t[] bcopied)
			PAYLOAD_ENCRYPT_NONE	// End to End encryption mode
	);
	if ( r == LORAWAN_SEND_SENT || r == LORAWAN_SEND_ACKED || LORAWAN_SEND_ACKED_WITH_DOWNLINK) {
		log_info("success\r\n",r);
	} else {
		log_info("failed (%d)\r\n",r);
	}
}

bool startMeasure(void){
	int measureAttempt = 0;
	int mes1 = 0;
	log_info("Refresh the WDG\r\n");
#if ITSDK_WITH_WDG != __WDG_NONE && ITSDK_WDG_MS > 0
   wdg_refresh();
#endif
	resetMeasure(&tabToPrint[0], 4); //Reset the return array
	HAL_GPIO_WritePin(SONICEN_GPIO_Port, SONICEN_Pin, GPIO_PIN_SET); //Set on the ultrasonic sensor
	itsdk_delayMs(2500); //Warm up for ultrasonic sensor

	log_info("Start the measure !\r\n");
	while(measureAttempt < 3){
		HAL_UART_Receive_IT(&huart1, &byte, 1); //On lance une mesure, ca return dans tabToPrint
		HAL_Delay(1500);
		//tabToPrint[1]=0x34;
		mes1 = charArrayToInt(&tabToPrint[0], 4);
		log_info("Attempt %d", measureAttempt);
		if (mes1==0){
			measureAttempt++;
		}
		else{
			measureAttempt=4;
		}
	}

	log_info("We measure ");
	HAL_UART_Transmit(&huart2, &tabToPrint[0], 5, 500);
	log_info(" cm\r\n");
	HAL_GPIO_WritePin(SONICEN_GPIO_Port, SONICEN_Pin, GPIO_PIN_RESET);
	  //waitMeasure = true; //Doit être fait pas l'interrupt et doit tomber dans un etat nop en attendant l'interrupt
	if(mes1 == 0){
		log_info("Measure is not valid\r\n");
		return false;
	}
	else {
		log_info("Measure is valid\r\n");
		return true;
	}
}

int charArrayToInt(uint8_t* array, uint8_t n){
    int number = 0;
    int mult = 1;

    n = (int)n < 0 ? -n : n;       /* quick absolute value check  */

    /* for each character in array */
    while (n--)
    {
        /* if not digit or '-', check if number > 0, break or continue */
        if ((array[n] < '0' || array[n] > '9') && array[n] != '-') {
            if (number)
                break;
            else
                continue;
        }

        if (array[n] == '-') {      /* if '-' if number, negate, break */
            if (number) {
                number = -number;
                break;
            }
        }
        else {                      /* convert digit to numeric value   */
            number += (array[n] - '0') * mult;
            mult *= 10;
        }
    }

    return number;
}
void resetMeasure(uint8_t * array, uint8_t size){
	for (int i = 0; i < size; i++){
		array[i] = 0x30; //Set to 0
	}
}
