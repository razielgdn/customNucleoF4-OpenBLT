################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/razielgdn/github-pages/Source/ARMCM4_STM32F4/can.c \
/home/razielgdn/github-pages/Source/ARMCM4_STM32F4/cpu.c \
/home/razielgdn/github-pages/Source/ARMCM4_STM32F4/flash.c \
/home/razielgdn/github-pages/Source/ARMCM4_STM32F4/mbrtu.c \
/home/razielgdn/github-pages/Source/ARMCM4_STM32F4/nvm.c \
/home/razielgdn/github-pages/Source/ARMCM4_STM32F4/rs232.c \
/home/razielgdn/github-pages/Source/ARMCM4_STM32F4/timer.c \
/home/razielgdn/github-pages/Source/ARMCM4_STM32F4/usb.c 

OBJS += \
./Loader/ARMCM4_STM32F4/can.o \
./Loader/ARMCM4_STM32F4/cpu.o \
./Loader/ARMCM4_STM32F4/flash.o \
./Loader/ARMCM4_STM32F4/mbrtu.o \
./Loader/ARMCM4_STM32F4/nvm.o \
./Loader/ARMCM4_STM32F4/rs232.o \
./Loader/ARMCM4_STM32F4/timer.o \
./Loader/ARMCM4_STM32F4/usb.o 

C_DEPS += \
./Loader/ARMCM4_STM32F4/can.d \
./Loader/ARMCM4_STM32F4/cpu.d \
./Loader/ARMCM4_STM32F4/flash.d \
./Loader/ARMCM4_STM32F4/mbrtu.d \
./Loader/ARMCM4_STM32F4/nvm.d \
./Loader/ARMCM4_STM32F4/rs232.d \
./Loader/ARMCM4_STM32F4/timer.d \
./Loader/ARMCM4_STM32F4/usb.d 


# Each subdirectory must supply rules for building sources it contributes
Loader/ARMCM4_STM32F4/can.o: /home/razielgdn/github-pages/Source/ARMCM4_STM32F4/can.c Loader/ARMCM4_STM32F4/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -DUSE_FULL_LL_DRIVER -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../App -I../../Source -I../../Source/ARMCM4_STM32F4 -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Loader/ARMCM4_STM32F4/cpu.o: /home/razielgdn/github-pages/Source/ARMCM4_STM32F4/cpu.c Loader/ARMCM4_STM32F4/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -DUSE_FULL_LL_DRIVER -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../App -I../../Source -I../../Source/ARMCM4_STM32F4 -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Loader/ARMCM4_STM32F4/flash.o: /home/razielgdn/github-pages/Source/ARMCM4_STM32F4/flash.c Loader/ARMCM4_STM32F4/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -DUSE_FULL_LL_DRIVER -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../App -I../../Source -I../../Source/ARMCM4_STM32F4 -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Loader/ARMCM4_STM32F4/mbrtu.o: /home/razielgdn/github-pages/Source/ARMCM4_STM32F4/mbrtu.c Loader/ARMCM4_STM32F4/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -DUSE_FULL_LL_DRIVER -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../App -I../../Source -I../../Source/ARMCM4_STM32F4 -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Loader/ARMCM4_STM32F4/nvm.o: /home/razielgdn/github-pages/Source/ARMCM4_STM32F4/nvm.c Loader/ARMCM4_STM32F4/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -DUSE_FULL_LL_DRIVER -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../App -I../../Source -I../../Source/ARMCM4_STM32F4 -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Loader/ARMCM4_STM32F4/rs232.o: /home/razielgdn/github-pages/Source/ARMCM4_STM32F4/rs232.c Loader/ARMCM4_STM32F4/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -DUSE_FULL_LL_DRIVER -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../App -I../../Source -I../../Source/ARMCM4_STM32F4 -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Loader/ARMCM4_STM32F4/timer.o: /home/razielgdn/github-pages/Source/ARMCM4_STM32F4/timer.c Loader/ARMCM4_STM32F4/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -DUSE_FULL_LL_DRIVER -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../App -I../../Source -I../../Source/ARMCM4_STM32F4 -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Loader/ARMCM4_STM32F4/usb.o: /home/razielgdn/github-pages/Source/ARMCM4_STM32F4/usb.c Loader/ARMCM4_STM32F4/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -DUSE_FULL_LL_DRIVER -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../App -I../../Source -I../../Source/ARMCM4_STM32F4 -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Loader-2f-ARMCM4_STM32F4

clean-Loader-2f-ARMCM4_STM32F4:
	-$(RM) ./Loader/ARMCM4_STM32F4/can.cyclo ./Loader/ARMCM4_STM32F4/can.d ./Loader/ARMCM4_STM32F4/can.o ./Loader/ARMCM4_STM32F4/can.su ./Loader/ARMCM4_STM32F4/cpu.cyclo ./Loader/ARMCM4_STM32F4/cpu.d ./Loader/ARMCM4_STM32F4/cpu.o ./Loader/ARMCM4_STM32F4/cpu.su ./Loader/ARMCM4_STM32F4/flash.cyclo ./Loader/ARMCM4_STM32F4/flash.d ./Loader/ARMCM4_STM32F4/flash.o ./Loader/ARMCM4_STM32F4/flash.su ./Loader/ARMCM4_STM32F4/mbrtu.cyclo ./Loader/ARMCM4_STM32F4/mbrtu.d ./Loader/ARMCM4_STM32F4/mbrtu.o ./Loader/ARMCM4_STM32F4/mbrtu.su ./Loader/ARMCM4_STM32F4/nvm.cyclo ./Loader/ARMCM4_STM32F4/nvm.d ./Loader/ARMCM4_STM32F4/nvm.o ./Loader/ARMCM4_STM32F4/nvm.su ./Loader/ARMCM4_STM32F4/rs232.cyclo ./Loader/ARMCM4_STM32F4/rs232.d ./Loader/ARMCM4_STM32F4/rs232.o ./Loader/ARMCM4_STM32F4/rs232.su ./Loader/ARMCM4_STM32F4/timer.cyclo ./Loader/ARMCM4_STM32F4/timer.d ./Loader/ARMCM4_STM32F4/timer.o ./Loader/ARMCM4_STM32F4/timer.su ./Loader/ARMCM4_STM32F4/usb.cyclo ./Loader/ARMCM4_STM32F4/usb.d ./Loader/ARMCM4_STM32F4/usb.o ./Loader/ARMCM4_STM32F4/usb.su

.PHONY: clean-Loader-2f-ARMCM4_STM32F4

