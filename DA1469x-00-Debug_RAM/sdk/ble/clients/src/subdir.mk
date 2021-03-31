################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/clients/src/bas_client.c \
C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/clients/src/ble_client.c \
C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/clients/src/cscs_client.c \
C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/clients/src/dis_client.c \
C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/clients/src/gatt_client.c \
C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/clients/src/hids_client.c \
C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/clients/src/hrs_client.c \
C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/clients/src/scps_client.c 

OBJS += \
./sdk/ble/clients/src/bas_client.o \
./sdk/ble/clients/src/ble_client.o \
./sdk/ble/clients/src/cscs_client.o \
./sdk/ble/clients/src/dis_client.o \
./sdk/ble/clients/src/gatt_client.o \
./sdk/ble/clients/src/hids_client.o \
./sdk/ble/clients/src/hrs_client.o \
./sdk/ble/clients/src/scps_client.o 

C_DEPS += \
./sdk/ble/clients/src/bas_client.d \
./sdk/ble/clients/src/ble_client.d \
./sdk/ble/clients/src/cscs_client.d \
./sdk/ble/clients/src/dis_client.d \
./sdk/ble/clients/src/gatt_client.d \
./sdk/ble/clients/src/hids_client.d \
./sdk/ble/clients/src/hrs_client.d \
./sdk/ble/clients/src/scps_client.d 


# Each subdirectory must supply rules for building sources it contributes
sdk/ble/clients/src/bas_client.o: C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/clients/src/bas_client.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/ble/clients/src/ble_client.o: C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/clients/src/ble_client.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/ble/clients/src/cscs_client.o: C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/clients/src/cscs_client.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/ble/clients/src/dis_client.o: C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/clients/src/dis_client.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/ble/clients/src/gatt_client.o: C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/clients/src/gatt_client.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/ble/clients/src/hids_client.o: C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/clients/src/hids_client.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/ble/clients/src/hrs_client.o: C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/clients/src/hrs_client.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sdk/ble/clients/src/scps_client.o: C:/Users/Public/SDK_10.0.10.118/sdk/interfaces/ble/clients/src/scps_client.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -I"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\adapter\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\api\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\manager\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\services\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\stack\da14690\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\util\include" -include"C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


