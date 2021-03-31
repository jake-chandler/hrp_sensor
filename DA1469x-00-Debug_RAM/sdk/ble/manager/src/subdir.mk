################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/manager/src/ble_mgr.c \
C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/manager/src/ble_mgr_ad_msg.c \
C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/manager/src/ble_mgr_cmd.c \
C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/manager/src/ble_mgr_common.c \
C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/manager/src/ble_mgr_gap.c \
C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/manager/src/ble_mgr_gattc.c \
C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/manager/src/ble_mgr_gatts.c \
C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/manager/src/ble_mgr_gtl.c \
C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/manager/src/ble_mgr_helper.c \
C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/manager/src/ble_mgr_l2cap.c \
C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/manager/src/storage.c \
C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/manager/src/storage_flash.c 

OBJS += \
./sdk/ble/manager/src/ble_mgr.o \
./sdk/ble/manager/src/ble_mgr_ad_msg.o \
./sdk/ble/manager/src/ble_mgr_cmd.o \
./sdk/ble/manager/src/ble_mgr_common.o \
./sdk/ble/manager/src/ble_mgr_gap.o \
./sdk/ble/manager/src/ble_mgr_gattc.o \
./sdk/ble/manager/src/ble_mgr_gatts.o \
./sdk/ble/manager/src/ble_mgr_gtl.o \
./sdk/ble/manager/src/ble_mgr_helper.o \
./sdk/ble/manager/src/ble_mgr_l2cap.o \
./sdk/ble/manager/src/storage.o \
./sdk/ble/manager/src/storage_flash.o 

C_DEPS += \
./sdk/ble/manager/src/ble_mgr.d \
./sdk/ble/manager/src/ble_mgr_ad_msg.d \
./sdk/ble/manager/src/ble_mgr_cmd.d \
./sdk/ble/manager/src/ble_mgr_common.d \
./sdk/ble/manager/src/ble_mgr_gap.d \
./sdk/ble/manager/src/ble_mgr_gattc.d \
./sdk/ble/manager/src/ble_mgr_gatts.d \
./sdk/ble/manager/src/ble_mgr_gtl.d \
./sdk/ble/manager/src/ble_mgr_helper.d \
./sdk/ble/manager/src/ble_mgr_l2cap.d \
./sdk/ble/manager/src/storage.d \
./sdk/ble/manager/src/storage_flash.d 


# Each subdirectory must supply rules for building sources it contributes
sdk/ble/manager/src/ble_mgr.o: C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/manager/src/ble_mgr.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/ble/manager/src/ble_mgr_ad_msg.o: C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/manager/src/ble_mgr_ad_msg.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/ble/manager/src/ble_mgr_cmd.o: C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/manager/src/ble_mgr_cmd.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/ble/manager/src/ble_mgr_common.o: C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/manager/src/ble_mgr_common.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/ble/manager/src/ble_mgr_gap.o: C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/manager/src/ble_mgr_gap.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/ble/manager/src/ble_mgr_gattc.o: C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/manager/src/ble_mgr_gattc.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/ble/manager/src/ble_mgr_gatts.o: C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/manager/src/ble_mgr_gatts.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/ble/manager/src/ble_mgr_gtl.o: C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/manager/src/ble_mgr_gtl.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/ble/manager/src/ble_mgr_helper.o: C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/manager/src/ble_mgr_helper.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/ble/manager/src/ble_mgr_l2cap.o: C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/manager/src/ble_mgr_l2cap.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/ble/manager/src/storage.o: C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/manager/src/storage.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/ble/manager/src/storage_flash.o: C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/manager/src/storage_flash.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


