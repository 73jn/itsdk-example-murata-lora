/*
 * logicsm.h
 *
 *  Created on: 3 déc. 2020
 *      Author: jeann
 */

#ifndef INC_LOGICSM_H_
#define INC_LOGICSM_H_
#include <stdbool.h>
#include <stdint.h>

#include <it_sdk/config.h>
#include <it_sdk/itsdk.h>
#include <it_sdk/time/time.h>
#include <it_sdk/logger/logger.h>
#include <it_sdk/sched/scheduler.h>
#include <it_sdk/statemachine/statemachine.h>
#include <it_sdk/eeprom/eeprom.h>
#include <it_sdk/eeprom/sdk_config.h>

#include <it_sdk/lorawan/lorawan.h>
#include <it_sdk/encrypt/encrypt.h>
#include <it_sdk/eeprom/securestore.h>
#include <it_sdk/lowpower/lowpower.h>
#include <drivers/sx1276/sx1276.h>


typedef enum{STATE_INITIAL,
		SLEEP,
		MEASURE,
		TRANSMIT_DATA } LogicState;
typedef enum{initSig,
		doMeasureSig,
		tansmitSig,
		goSleepSig} EventSig;

LogicState state;
LogicState oldState;


extern uint8_t byte;
extern uint8_t tabToPrint[5];



void initLogic(void);
void processLogic(int event);

void goToSleep();

void transmitData(void);

void startMeasure(void);
void getMeasure(char tab[]);

#endif /* INC_LOGICSM_H_ */
