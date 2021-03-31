################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/api/src/ble_attribdb.c \
C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/api/src/ble_common.c \
C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/api/src/ble_gap.c \
C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/api/src/ble_gattc.c \
C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/api/src/ble_gattc_util.c \
C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/api/src/ble_gatts.c \
C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/api/src/ble_l2cap.c \
C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/api/src/ble_storage.c \
C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/api/src/ble_uuid.c 

OBJS += \
./sdk/ble/api/src/ble_attribdb.o \
./sdk/ble/api/src/ble_common.o \
./sdk/ble/api/src/ble_gap.o \
./sdk/ble/api/src/ble_gattc.o \
./sdk/ble/api/src/ble_gattc_util.o \
./sdk/ble/api/src/ble_gatts.o \
./sdk/ble/api/src/ble_l2cap.o \
./sdk/ble/api/src/ble_storage.o \
./sdk/ble/api/src/ble_uuid.o 

C_DEPS += \
./sdk/ble/api/src/ble_attribdb.d \
./sdk/ble/api/src/ble_common.d \
./sdk/ble/api/src/ble_gap.d \
./sdk/ble/api/src/ble_gattc.d \
./sdk/ble/api/src/ble_gattc_util.d \
./sdk/ble/api/src/ble_gatts.d \
./sdk/ble/api/src/ble_l2cap.d \
./sdk/ble/api/src/ble_storage.d \
./sdk/ble/api/src/ble_uuid.d 


# Each subdirectory must supply rules for building sources it contributes
sdk/ble/api/src/ble_attribdb.o: C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/api/src/ble_attribdb.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/ble/api/src/ble_common.o: C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/api/src/ble_common.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/ble/api/src/ble_gap.o: C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/api/src/ble_gap.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/ble/api/src/ble_gattc.o: C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/api/src/ble_gattc.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/ble/api/src/ble_gattc_util.o: C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/api/src/ble_gattc_util.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/ble/api/src/ble_gatts.o: C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/api/src/ble_gatts.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/ble/api/src/ble_l2cap.o: C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/api/src/ble_l2cap.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/ble/api/src/ble_storage.o: C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/api/src/ble_storage.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/ble/api/src/ble_uuid.o: C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/api/src/ble_uuid.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


