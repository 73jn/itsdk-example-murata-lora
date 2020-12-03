################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Core/Startup/startup_stm32l072czyx.s 

OBJS += \
./Core/Startup/startup_stm32l072czyx.o 

S_DEPS += \
./Core/Startup/startup_stm32l072czyx.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Startup/startup_stm32l072czyx.o: ../Core/Startup/startup_stm32l072czyx.s
	arm-none-eabi-gcc -mcpu=cortex-m0plus -g3 -c -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/STM32L0xx_HAL_Driver/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Device/ST/STM32L0xx/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/stm32-it-sdk/Inc" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Drivers/CMSIS/Include" -I"C:/Users/jeann/Desktop/LoRaTrash/itsdk-example-murata-lora/Core/Inc" -x assembler-with-cpp -MMD -MP -MF"Core/Startup/startup_stm32l072czyx.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@" "$<"

