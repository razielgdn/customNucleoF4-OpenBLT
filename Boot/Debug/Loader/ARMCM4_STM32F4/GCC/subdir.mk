################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/razielgdn/github-pages/Source/ARMCM4_STM32F4/GCC/cpu_comp.c 

OBJS += \
./Loader/ARMCM4_STM32F4/GCC/cpu_comp.o 

C_DEPS += \
./Loader/ARMCM4_STM32F4/GCC/cpu_comp.d 


# Each subdirectory must supply rules for building sources it contributes
Loader/ARMCM4_STM32F4/GCC/cpu_comp.o: /home/razielgdn/github-pages/Source/ARMCM4_STM32F4/GCC/cpu_comp.c Loader/ARMCM4_STM32F4/GCC/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -DUSE_FULL_LL_DRIVER -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../App -I../../Source -I../../Source/ARMCM4_STM32F4 -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Loader-2f-ARMCM4_STM32F4-2f-GCC

clean-Loader-2f-ARMCM4_STM32F4-2f-GCC:
	-$(RM) ./Loader/ARMCM4_STM32F4/GCC/cpu_comp.cyclo ./Loader/ARMCM4_STM32F4/GCC/cpu_comp.d ./Loader/ARMCM4_STM32F4/GCC/cpu_comp.o ./Loader/ARMCM4_STM32F4/GCC/cpu_comp.su

.PHONY: clean-Loader-2f-ARMCM4_STM32F4-2f-GCC

