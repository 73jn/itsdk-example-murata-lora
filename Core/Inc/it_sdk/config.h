/* ==========================================================
 * config.h - SDK Configuration file
 * Project : Disk91 SDK
 * ----------------------------------------------------------
 * Created on: 2 sept. 2018
 *     Author: Paul Pinault aka Disk91
 * ----------------------------------------------------------
 * Copyright (C) 2018  Disk91
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU LESSER General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Lesser Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 * ----------------------------------------------------------
 * 
 *
 * ==========================================================
 */

#ifndef IT_SDK_CONFIG_H_
#define IT_SDK_CONFIG_H_

#include <it_sdk/config_defines.h>

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// | SDK SETTING                   | USER SELECTED VALUE                  | SETTING DESCRIPTION                   |
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#define ITSDK_CUBEMX_VERSION	    __CUBEMX_VERSION500						// Version of cube MX
#define ITSDK_PLATFORM 				__PLATFORM_STM32L0						// Hardware platform selection
#define ITSDK_DEVICE				__DEVICE_STM32L072XX					// Specific device
#define ITSDK_RAM_SIZE				(20*1024)								// RAM Memory size
#define ITSDK_WITH_UART				( __UART_USART2 | __UART_LPUART1 )		// Use LPUART1 and USART2 for debug
#define ITSDK_WITH_RTC				__RTC_ENABLED							// The Rtc is usd in the firmware
#define ITSDK_WITH_CLK_ADJUST		__ENABLE								// The RTC (and wtachdog) is calibrated
#define ITSDK_RTC_CLKFREQ			32768									// RTC clock source frequency
#define ITSDK_CLK_BEST_SOURCE		__CLK_BEST_SRC_RTC						// The RTC is the most accurate clk source to ADJUST Others
#define ITSDK_CLK_CORRECTION		1000									// correct clock with 1200 o/oo (+20%) of the ticks (used when clk_adjust = 0 or for RTC when CLK_BEST_SRC_RTC)
#define ITSDK_WITH_ADC				__ADC_ENABLED							// Use of Adc (includes the structures)
#define ITSDK_ADC1_PIN				14										// Map the channel for ADC on PIN 14 (PA0)
#define ITSDK_VDD_MV				3300									// VDD value in mV
#define ITSDK_VBAT_MIN				2000									// MIN value for VBAT in mv
#define ITSDK_VBAT_MAX				3300									// MAX value for VBAT in mv
#define ITSDK_VBAT_ADC_PIN			-1										// ADC pin used to measure VBAT (if -1 assume VBAT = VCC)
#define ITSDK_WITH_SPI				__SPI_ENABLED							// Use SPI (inludes the strutures)
#define ITSDK_SPI_HANDLER_TYPE		SPI_HandleTypeDef						// The name of the Spi structure to be used for the targeted MCU
#define ITSDK_SPI_TIMEOUT			100										// SPI transaction timeout in ms
#define ITSDK_WITH_HW_TIMER			__TIMER_ENABLED							// Use Hardware Timer
#define ITSDK_HW_TIMER1_HANDLE		htim21									// Timer handler to be used as primary timer
#define ITSDK_HW_TIMER1_ID			21										// Timer hadware 1 - id/name
#define ITSDK_HW_TIMER1_FREQ		32000000								// Primary timer base frequency
#define ITSDK_HW_TIMER1_MAX			65536									// Timer's counter max value ( 2^size )
#define ITSDK_TIMER_SLOTS			5										// Maximum number of SOFT TIMER available in parallel - 0 disable SOFT TIMER code
#define ITSDK_WDG_MS				16000									// WatchDog time out in ms 1 --> 28000 / 0 to disable
#define ITSDK_WDG_CLKFREQ			37000									// Watchdog clock source frequency
#define ITSDK_CORE_CLKFREQ			32000000								// Core Frequency of the chip

#define ITSDK_LOGGER_CONF			0x0070									// error->info level on serial1 => USART2 (see logger.c)
#define ITSDK_LOGGER_MODULE			( \
									  __LOG_MOD_NONE		  \
									| __LOG_MOD_STKLORA       \
								/*	| __LOG_MOD_STIMER    */  \
								/*	| __LOG_MOD_LOWLORADBG */ \
								/*	| __LOG_MOD_LOWLORAINF */ \
									)										// list the module to be activated in log see config_defines.h

#define ITSDK_LOWPOWER_MOD			( __LOWPWR_MODE_STOP \
									| __LOWPWR_MODE_WAKE_RTC \
									| __LOWPWR_MODE_WAKE_GPIO \
									)										// Mode Stop + wakeup RTC + GPIO
#define ITSDK_LOWPOWER_RTC_MS		500										// RTC wake up after 500ms
#define ITSDK_LOWPOWER_GPIO_A_KEEP	(  __LP_GPIO_1  \
									 | __LP_GPIO_2  \
									 | __LP_GPIO_3  \
									 | __LP_GPIO_4	\
									 | __LP_GPIO_5	\
									 | __LP_GPIO_6	\
									 | __LP_GPIO_7	\
									 | __LP_GPIO_12	\
									 | __LP_GPIO_13	\
									 | __LP_GPIO_14	\
									 | __LP_GPIO_15	\
		                            )										// Keep activ (led 2, uart, lpuart, radio, spi1, sx1276 GPIO4)
#define ITSDK_LOWPOWER_GPIO_B_KEEP	(  __LP_GPIO_0 \
								     | __LP_GPIO_1 \
									 | __LP_GPIO_2 \
									 | __LP_GPIO_3 \
									 | __LP_GPIO_4 \
									 | __LP_GPIO_5 \
									 | __LP_GPIO_6 \
									 | __LP_GPIO_7 \
									 | __LP_GPIO_12 \
									 | __LP_GPIO_13 \
									 | __LP_GPIO_14 \
									)										// Keep activ (led 1,3,4), radio, button, spi2, sx1276 GPIO 0,1,2
#define ITSDK_LOWPOWER_GPIO_C_KEEP	(   __LP_GPIO_0 \
									  | __LP_GPIO_1 \
									  | __LP_GPIO_2 \
									  | __LP_GPIO_13 \
									  | __LP_GPIO_14 \
									  | __LP_GPIO_15 \
									)										// keep radio
#define ITSDK_LOWPOWER_GPIO_D_KEEP	(__LP_GPIO_NONE)						// During Low Power mode, the GPIO bank D are all off (not implemented yet)
#define ITSDK_LOWPOWER_GPIO_E_KEEP	(__LP_GPIO_NONE)						// During Low Power mode, the GPIO bank E are all off (not implemented yet)
#define ITSDK_LOWPOWER_GPIO_H_KEEP	(__LP_GPIO_NONE)						// During Low Power mode, the GPIO bank H are all off (not implemented yet)

																			// GPIO Wake-Up => the pin should also be in the _KEEP list
#define ITSDK_LOWPOWER_GPIO_A_WAKE	(__LP_GPIO_NONE)						// During Low Power mode, the GPIO bank A can be used for wakeup
																			// SX1276 GPIO 4 & 5
#define ITSDK_LOWPOWER_GPIO_B_WAKE	(  __LP_GPIO_0 \
									 | __LP_GPIO_1 \
									 | __LP_GPIO_4 \
									)										// During Low Power mode, the GPIO bank B can be used for wakeup
																			// SX1276 GPIO 0 & 1 & 2

#define ITSDK_LOWPOWER_GPIO_C_WAKE	( __LP_GPIO_13 \
									)										// During Low Power mode, the GPIO bank C can be used for wakeup
																			// SX1276 GPIO 3
#define ITSDK_LOWPOWER_GPIO_D_WAKE	(__LP_GPIO_NONE)						// During Low Power mode, the GPIO bank D can be used for wakeup
#define ITSDK_LOWPOWER_GPIO_E_WAKE	(__LP_GPIO_NONE)						// During Low Power mode, the GPIO bank E can be used for wakeup
#define ITSDK_LOWPOWER_GPIO_H_WAKE	(__LP_GPIO_NONE)						// During Low Power mode, the GPIO bank H can be used for wakeup


#define ITSDK_SHEDULER_TASKS		1										// Maximum number of Task (0 will deactivate scheduler code)
#define ITSDK_STATEMACHINE_TASKS	0										// Maximum number of state machine task (0 will deactivate STM code)
#define ITSDK_STATEMACHINE_NAMESZ	8										// Maximum size for task name (-1)

#define ITSDK_WITH_SIGFOX_LIB		__DISABLE								// Include the sigfox code when 1 disabled when 0
#define ITSDK_SIGFOX_LIB			__SIGFOX_NONE							// Type of Sigfox module

#define ITSDK_WITH_LORAWAN_LIB		__ENABLE								// Include the lorawan code when 1 disabled when 0
#define ITSDK_LORAWAN_LIB			__LORAWAN_SX1276

#define ITSDK_PROTECT_KEY			0xA7459BC3 	 	/* CHANGE ME */			// A random value used to protect the SIGFOX (and others) KEY in memory (better than nothing)


#if ITSDK_PLATFORM == __PLATFORM_STM32L0
	#include <stm32l_sdk/config.h>
	#include "stm32l0xx_hal.h"
	//#include "stm32l0xx.h"
#endif

#if ITSDK_WITH_SIGFOX_LIB == __ENABLE
	#include <it_sdk/configSigfox.h>
#endif

#if ITSDK_WITH_LORAWAN_LIB == __ENABLE
	#include <it_sdk/configLoRaWan.h>
#endif

#include <it_sdk/configDrivers.h>

#endif /* IT_SDK_CONFIG_H_ */