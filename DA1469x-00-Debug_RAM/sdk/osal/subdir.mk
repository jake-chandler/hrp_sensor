################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Public/SDK_10.0.10.118/sdk/middleware/osal/msg_queues.c \
C:/Users/Public/SDK_10.0.10.118/sdk/middleware/osal/resmgmt.c \
C:/Users/Public/SDK_10.0.10.118/sdk/middleware/osal/usb_osal_wrapper.c 

OBJS += \
./sdk/osal/msg_queues.o \
./sdk/osal/resmgmt.o \
./sdk/osal/usb_osal_wrapper.o 

C_DEPS += \
./sdk/osal/msg_queues.d \
./sdk/osal/resmgmt.d \
./sdk/osal/usb_osal_wrapper.d 


# Each subdirectory must supply rules for building sources it contributes
sdk/osal/msg_queues.o: C:/Users/Public/SDK_10.0.10.118/sdk/middleware/osal/msg_queues.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/osal/resmgmt.o: C:/Users/Public/SDK_10.0.10.118/sdk/middleware/osal/resmgmt.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/osal/usb_osal_wrapper.o: C:/Users/Public/SDK_10.0.10.118/sdk/middleware/osal/usb_osal_wrapper.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


