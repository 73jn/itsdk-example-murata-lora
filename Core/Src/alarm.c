/*
 * alarm.c
 *
 *  Created on: 3 déc. 2020
 *      Author: jeann
 */
#include "alarm.h"
int gg=0;
void processAlarm(int event){
	//TEST RTC
    itsdk_lorawan_loop();
	if (gg==1){
		log_info("Wakeup, went in interrupt\r\n");

		//lire la date AUSSI SINON NULLLLLLLLLLLL
		RTC_TimeTypeDef time;
		RTC_DateTypeDef date;
		HAL_RTC_GetTime(&hrtc, &time, RTC_FORMAT_BIN);
		HAL_RTC_GetDate(&hrtc,&date,RTC_FORMAT_BIN);
		log_info("Do Something very nice...\r\n");
		log_info("%dH:%dmin:%dsec\r\n", time.Hours, time.Minutes, time.Seconds);
		XF_pushEvent(1);
		gg=0;
	}
}
