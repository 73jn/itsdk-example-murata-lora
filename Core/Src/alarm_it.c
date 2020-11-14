/*
 * alarm_it.c
 *
 *  Created on: 14 nov. 2020
 *      Author: jeann
 */
#include "alarm_it.h"

extern int gg;
void HAL_RTC_AlarmAEventCallback(RTC_HandleTypeDef *hrtc){
	gg=1;
	hrtc->State = HAL_RTC_STATE_READY;
}
