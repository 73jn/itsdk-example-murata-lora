################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/adc.c \
../Core/Src/alarm.c \
../Core/Src/alarm_it.c \
../Core/Src/gpio.c \
../Core/Src/iwdg.c \
../Core/Src/logicsm.c \
../Core/Src/main.c \
../Core/Src/project_main.c \
../Core/Src/rtc.c \
../Core/Src/spi.c \
../Core/Src/stm32l0xx_hal_msp.c \
../Core/Src/stm32l0xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32l0xx.c \
../Core/Src/tim.c \
../Core/Src/usart.c \
../Core/Src/xf.c 

OBJS += \
./Core/Src/adc.o \
./Core/Src/alarm.o \
./Core/Src/alarm_it.o \
./Core/Src/gpio.o \
./Core/Src/iwdg.o \
./Core/Src/logicsm.o \
./Core/Src/main.o \
./Core/Src/project_main.o \
./Core/Src/rtc.o \
./Core/Src/spi.o \
./Core/Src/stm32l0xx_hal_msp.o \
./Core/Src/stm32l0xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32l0xx.o \
./Core/Src/tim.o \
./Core/Src/usart.o \
./Core/Src/xf.o 

C_DEPS += \
./Core/Src/adc.d \
./Core/Src/alarm.d \
./Core/Src/alarm_it.d \
./Core/Src/gpio.d \
./Core/Src/iwdg.d \
./Core/Src/logicsm.d \
./Core/Src/main.d \
./Core/Src/project_main.d \
./Core/Src/rtc.d \
./Core/Src/spi.d \
./Core/Src/stm32l0xx_hal_msp.d \
./Core/Src/stm32l0xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32l0xx.d \
./Core/Src/tim.d \
./Core/Src/usart.d \
./Core/Src/xf.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/adc.o: ../Core/Src/adc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L072xx -DDEBUG -c -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/STM32L0xx_HAL_Driver/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Device/ST/STM32L0xx/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/adc.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/alarm.o: ../Core/Src/alarm.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L072xx -DDEBUG -c -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/STM32L0xx_HAL_Driver/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Device/ST/STM32L0xx/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/alarm.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/alarm_it.o: ../Core/Src/alarm_it.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L072xx -DDEBUG -c -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/STM32L0xx_HAL_Driver/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Device/ST/STM32L0xx/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/alarm_it.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/gpio.o: ../Core/Src/gpio.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L072xx -DDEBUG -c -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/STM32L0xx_HAL_Driver/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Device/ST/STM32L0xx/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/gpio.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/iwdg.o: ../Core/Src/iwdg.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L072xx -DDEBUG -c -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/STM32L0xx_HAL_Driver/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Device/ST/STM32L0xx/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/iwdg.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/logicsm.o: ../Core/Src/logicsm.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L072xx -DDEBUG -c -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/STM32L0xx_HAL_Driver/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Device/ST/STM32L0xx/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/logicsm.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/main.o: ../Core/Src/main.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L072xx -DDEBUG -c -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/STM32L0xx_HAL_Driver/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Device/ST/STM32L0xx/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/main.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/project_main.o: ../Core/Src/project_main.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L072xx -DDEBUG -c -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/STM32L0xx_HAL_Driver/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Device/ST/STM32L0xx/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/project_main.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/rtc.o: ../Core/Src/rtc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L072xx -DDEBUG -c -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/STM32L0xx_HAL_Driver/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Device/ST/STM32L0xx/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/rtc.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/spi.o: ../Core/Src/spi.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L072xx -DDEBUG -c -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/STM32L0xx_HAL_Driver/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Device/ST/STM32L0xx/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/spi.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/stm32l0xx_hal_msp.o: ../Core/Src/stm32l0xx_hal_msp.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L072xx -DDEBUG -c -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/STM32L0xx_HAL_Driver/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Device/ST/STM32L0xx/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/stm32l0xx_hal_msp.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/stm32l0xx_it.o: ../Core/Src/stm32l0xx_it.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L072xx -DDEBUG -c -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/STM32L0xx_HAL_Driver/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Device/ST/STM32L0xx/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/stm32l0xx_it.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/syscalls.o: ../Core/Src/syscalls.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L072xx -DDEBUG -c -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/STM32L0xx_HAL_Driver/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Device/ST/STM32L0xx/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/syscalls.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/sysmem.o: ../Core/Src/sysmem.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L072xx -DDEBUG -c -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/STM32L0xx_HAL_Driver/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Device/ST/STM32L0xx/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/sysmem.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/system_stm32l0xx.o: ../Core/Src/system_stm32l0xx.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L072xx -DDEBUG -c -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/STM32L0xx_HAL_Driver/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Device/ST/STM32L0xx/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/system_stm32l0xx.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/tim.o: ../Core/Src/tim.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L072xx -DDEBUG -c -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/STM32L0xx_HAL_Driver/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Device/ST/STM32L0xx/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/tim.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/usart.o: ../Core/Src/usart.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L072xx -DDEBUG -c -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/STM32L0xx_HAL_Driver/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Device/ST/STM32L0xx/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/usart.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/xf.o: ../Core/Src/xf.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L072xx -DDEBUG -c -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/STM32L0xx_HAL_Driver/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Device/ST/STM32L0xx/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/xf.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

