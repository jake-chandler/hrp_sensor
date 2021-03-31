################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include startup/DA1469x/GCC/subdir.mk
-include startup/DA1469x/subdir.mk
-include startup/subdir.mk
-include sdk/util/src/subdir.mk
-include sdk/sys_man/subdir.mk
-include sdk/snc/src/subdir.mk
-include sdk/peripherals/src/subdir.mk
-include sdk/osal/subdir.mk
-include sdk/memory/src/subdir.mk
-include sdk/ble/stack/da14690/src/subdir.mk
-include sdk/ble/services/src/subdir.mk
-include sdk/ble/manager/src/subdir.mk
-include sdk/ble/clients/src/subdir.mk
-include sdk/ble/api/src/subdir.mk
-include sdk/ble/adapter/src/subdir.mk
-include sdk/adapters/src/subdir.mk
-include sdk/FreeRTOS/portable/MemMang/subdir.mk
-include sdk/FreeRTOS/portable/GCC/DA1469x/subdir.mk
-include sdk/FreeRTOS/portable/Common/subdir.mk
-include sdk/FreeRTOS/subdir.mk
-include config/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
hrp_sensor.bin \

SECONDARY_SIZE += \
hrp_sensor.siz \


# All Target
all:
	$(MAKE) --no-print-directory pre-build
	$(MAKE) --no-print-directory main-build

# Main-build Target
main-build: hrp_sensor.elf secondary-outputs

# Tool invocations
hrp_sensor.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Cross ARM C Linker'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -T "C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor/DA1469x-00-Debug_RAM/mem.ld" -T "C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor/DA1469x-00-Debug_RAM/sections.ld" -Xlinker --gc-sections -L"C:\Users\Public\SDK_10.0.10.118\sdk\bsp\ldscripts\ble_projects" -L"C:\Users\Public\SDK_10.0.10.118\sdk\interfaces\ble\binaries\DA1469x-Release" -Wl,-Map,"hrp_sensor.map" --specs=nano.specs --specs=nosys.specs -o "hrp_sensor.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

hrp_sensor.bin: hrp_sensor.elf
	@echo 'Invoking: Cross ARM GNU Create Flash Image'
	arm-none-eabi-objcopy -O binary "hrp_sensor.elf"  "hrp_sensor.bin"
	@echo 'Finished building: $@'
	@echo ' '

hrp_sensor.siz: hrp_sensor.elf
	@echo 'Invoking: Cross ARM GNU Print Size'
	arm-none-eabi-size --format=berkeley "hrp_sensor.elf"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(SECONDARY_FLASH)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_UPPER_DEPS)$(C_DEPS) hrp_sensor.elf
	-@echo ' '

pre-build:
	-@echo 'Generate linker scripts.'
	-make generate_ldscripts DEVICE=DA14699_00 PRE_BUILD_EXTRA_DEFS="" APP_CONFIG_H="C:\Users\Public\SDK_10.0.10.118\projects\dk_apps\ble_profiles\hrp_sensor\config\custom_config_ram.h" CC="arm-none-eabi-gcc" BSP_CONFIG_DIR="C:\Users\Public\SDK_10.0.10.118\sdk\bsp\config" MIDDLEWARE_CONFIG_DIR="C:\Users\Public\SDK_10.0.10.118\sdk\middleware\config" LDSCRIPT_PATH="C:\Users\Public\SDK_10.0.10.118\sdk\bsp\ldscripts\ble_projects"
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_SIZE)

.PHONY: all clean dependents main-build pre-build

-include ../makefile.targets
