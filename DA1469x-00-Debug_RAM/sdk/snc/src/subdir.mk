################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Public/SDK_10.0.10.118/sdk/bsp/snc/src/SeNIS.c \
C:/Users/Public/SDK_10.0.10.118/sdk/bsp/snc/src/snc_debug.c \
C:/Users/Public/SDK_10.0.10.118/sdk/bsp/snc/src/snc_defs.c \
C:/Users/Public/SDK_10.0.10.118/sdk/bsp/snc/src/snc_emu.c \
C:/Users/Public/SDK_10.0.10.118/sdk/bsp/snc/src/snc_hw_gpadc.c \
C:/Users/Public/SDK_10.0.10.118/sdk/bsp/snc/src/snc_hw_gpio.c \
C:/Users/Public/SDK_10.0.10.118/sdk/bsp/snc/src/snc_hw_i2c.c \
C:/Users/Public/SDK_10.0.10.118/sdk/bsp/snc/src/snc_hw_spi.c \
C:/Users/Public/SDK_10.0.10.118/sdk/bsp/snc/src/snc_hw_sys.c \
C:/Users/Public/SDK_10.0.10.118/sdk/bsp/snc/src/snc_hw_uart.c \
C:/Users/Public/SDK_10.0.10.118/sdk/bsp/snc/src/snc_main.c \
C:/Users/Public/SDK_10.0.10.118/sdk/bsp/snc/src/snc_queues.c 

OBJS += \
./sdk/snc/src/SeNIS.o \
./sdk/snc/src/snc_debug.o \
./sdk/snc/src/snc_defs.o \
./sdk/snc/src/snc_emu.o \
./sdk/snc/src/snc_hw_gpadc.o \
./sdk/snc/src/snc_hw_gpio.o \
./sdk/snc/src/snc_hw_i2c.o \
./sdk/snc/src/snc_hw_spi.o \
./sdk/snc/src/snc_hw_sys.o \
./sdk/snc/src/snc_hw_uart.o \
./sdk/snc/src/snc_main.o \
./sdk/snc/src/snc_queues.o 

C_DEPS += \
./sdk/snc/src/SeNIS.d \
./sdk/snc/src/snc_debug.d \
./sdk/snc/src/snc_defs.d \
./sdk/snc/src/snc_emu.d \
./sdk/snc/src/snc_hw_gpadc.d \
./sdk/snc/src/snc_hw_gpio.d \
./sdk/snc/src/snc_hw_i2c.d \
./sdk/snc/src/snc_hw_spi.d \
./sdk/snc/src/snc_hw_sys.d \
./sdk/snc/src/snc_hw_uart.d \
./sdk/snc/src/snc_main.d \
./sdk/snc/src/snc_queues.d 


# Each subdirectory must supply rules for building sources it contributes
sdk/snc/src/SeNIS.o: C:/Users/Public/SDK_10.0.10.118/sdk/bsp/snc/src/SeNIS.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/snc/src/snc_debug.o: C:/Users/Public/SDK_10.0.10.118/sdk/bsp/snc/src/snc_debug.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/snc/src/snc_defs.o: C:/Users/Public/SDK_10.0.10.118/sdk/bsp/snc/src/snc_defs.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/snc/src/snc_emu.o: C:/Users/Public/SDK_10.0.10.118/sdk/bsp/snc/src/snc_emu.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/snc/src/snc_hw_gpadc.o: C:/Users/Public/SDK_10.0.10.118/sdk/bsp/snc/src/snc_hw_gpadc.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/snc/src/snc_hw_gpio.o: C:/Users/Public/SDK_10.0.10.118/sdk/bsp/snc/src/snc_hw_gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/snc/src/snc_hw_i2c.o: C:/Users/Public/SDK_10.0.10.118/sdk/bsp/snc/src/snc_hw_i2c.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/snc/src/snc_hw_spi.o: C:/Users/Public/SDK_10.0.10.118/sdk/bsp/snc/src/snc_hw_spi.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/snc/src/snc_hw_sys.o: C:/Users/Public/SDK_10.0.10.118/sdk/bsp/snc/src/snc_hw_sys.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/snc/src/snc_hw_uart.o: C:/Users/Public/SDK_10.0.10.118/sdk/bsp/snc/src/snc_hw_uart.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/snc/src/snc_main.o: C:/Users/Public/SDK_10.0.10.118/sdk/bsp/snc/src/snc_main.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/snc/src/snc_queues.o: C:/Users/Public/SDK_10.0.10.118/sdk/bsp/snc/src/snc_queues.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


