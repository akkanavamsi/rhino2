#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-pic32mz.mk)" "nbproject/Makefile-local-pic32mz.mk"
include nbproject/Makefile-local-pic32mz.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32mz
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/GHG_App_V1.0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/GHG_App_V1.0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32mz/driver/sdspi/src/drv_sdspi.c ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_driver_interface.c ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_file_system.c ../src/config/pic32mz/driver/spi/src/drv_spi.c ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs.c ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs_device.c ../src/config/pic32mz/peripheral/cache/plib_cache.c ../src/config/pic32mz/peripheral/cache/plib_cache_pic32mz.S ../src/config/pic32mz/peripheral/clk/plib_clk.c ../src/config/pic32mz/peripheral/coretimer/plib_coretimer.c ../src/config/pic32mz/peripheral/evic/plib_evic.c ../src/config/pic32mz/peripheral/gpio/plib_gpio.c ../src/config/pic32mz/peripheral/i2c/master/plib_i2c2_master.c ../src/config/pic32mz/peripheral/i2c/master/plib_i2c4_master.c ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi4_master.c ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi2_master.c ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/pic32mz/peripheral/tmr/plib_tmr2.c ../src/config/pic32mz/peripheral/uart/plib_uart5.c ../src/config/pic32mz/peripheral/uart/plib_uart6.c ../src/config/pic32mz/peripheral/uart/plib_uart3.c ../src/config/pic32mz/peripheral/uart/plib_uart4.c ../src/config/pic32mz/peripheral/uart/plib_uart1.c ../src/config/pic32mz/peripheral/uart/plib_uart2.c ../src/config/pic32mz/stdio/xc32_monitor.c ../src/config/pic32mz/system/cache/sys_cache.c ../src/config/pic32mz/system/dma/sys_dma.c ../src/config/pic32mz/system/fs/fat_fs/file_system/ff.c ../src/config/pic32mz/system/fs/fat_fs/file_system/ffunicode.c ../src/config/pic32mz/system/fs/fat_fs/hardware_access/diskio.c ../src/config/pic32mz/system/fs/src/sys_fs.c ../src/config/pic32mz/system/fs/src/sys_fs_media_manager.c ../src/config/pic32mz/system/fs/src/sys_fs_fat_interface.c ../src/config/pic32mz/system/int/src/sys_int.c ../src/config/pic32mz/system/time/src/sys_time.c ../src/config/pic32mz/usb/src/usb_device.c ../src/config/pic32mz/usb/src/usb_device_cdc.c ../src/config/pic32mz/usb/src/usb_device_cdc_acm.c ../src/config/pic32mz/usb_device_init_data.c ../src/config/pic32mz/tasks.c ../src/config/pic32mz/initialization.c ../src/config/pic32mz/interrupts.c ../src/config/pic32mz/exceptions.c ../src/app.c ../src/main.c ../src/communication.c ../src/mdot.c ../src/stringbuffer.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/757013429/drv_sdspi.o ${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o ${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o ${OBJECTDIR}/_ext/2120450970/drv_spi.o ${OBJECTDIR}/_ext/1783409726/drv_usbhs.o ${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o ${OBJECTDIR}/_ext/1640642171/plib_cache.o ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o ${OBJECTDIR}/_ext/10646107/plib_clk.o ${OBJECTDIR}/_ext/809018751/plib_coretimer.o ${OBJECTDIR}/_ext/330098546/plib_evic.o ${OBJECTDIR}/_ext/330152374/plib_gpio.o ${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o ${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o ${OBJECTDIR}/_ext/867254719/plib_spi4_master.o ${OBJECTDIR}/_ext/867254719/plib_spi2_master.o ${OBJECTDIR}/_ext/867254719/plib_spi1_master.o ${OBJECTDIR}/_ext/10662482/plib_tmr2.o ${OBJECTDIR}/_ext/330555317/plib_uart5.o ${OBJECTDIR}/_ext/330555317/plib_uart6.o ${OBJECTDIR}/_ext/330555317/plib_uart3.o ${OBJECTDIR}/_ext/330555317/plib_uart4.o ${OBJECTDIR}/_ext/330555317/plib_uart1.o ${OBJECTDIR}/_ext/330555317/plib_uart2.o ${OBJECTDIR}/_ext/1991269565/xc32_monitor.o ${OBJECTDIR}/_ext/1519118610/sys_cache.o ${OBJECTDIR}/_ext/1373644956/sys_dma.o ${OBJECTDIR}/_ext/1192657380/ff.o ${OBJECTDIR}/_ext/1192657380/ffunicode.o ${OBJECTDIR}/_ext/727274963/diskio.o ${OBJECTDIR}/_ext/252936118/sys_fs.o ${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o ${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o ${OBJECTDIR}/_ext/1832149040/sys_int.o ${OBJECTDIR}/_ext/1636986698/sys_time.o ${OBJECTDIR}/_ext/202551283/usb_device.o ${OBJECTDIR}/_ext/202551283/usb_device_cdc.o ${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o ${OBJECTDIR}/_ext/953055421/usb_device_init_data.o ${OBJECTDIR}/_ext/953055421/tasks.o ${OBJECTDIR}/_ext/953055421/initialization.o ${OBJECTDIR}/_ext/953055421/interrupts.o ${OBJECTDIR}/_ext/953055421/exceptions.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/communication.o ${OBJECTDIR}/_ext/1360937237/mdot.o ${OBJECTDIR}/_ext/1360937237/stringbuffer.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/757013429/drv_sdspi.o.d ${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o.d ${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o.d ${OBJECTDIR}/_ext/2120450970/drv_spi.o.d ${OBJECTDIR}/_ext/1783409726/drv_usbhs.o.d ${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o.d ${OBJECTDIR}/_ext/1640642171/plib_cache.o.d ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.d ${OBJECTDIR}/_ext/10646107/plib_clk.o.d ${OBJECTDIR}/_ext/809018751/plib_coretimer.o.d ${OBJECTDIR}/_ext/330098546/plib_evic.o.d ${OBJECTDIR}/_ext/330152374/plib_gpio.o.d ${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o.d ${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o.d ${OBJECTDIR}/_ext/867254719/plib_spi4_master.o.d ${OBJECTDIR}/_ext/867254719/plib_spi2_master.o.d ${OBJECTDIR}/_ext/867254719/plib_spi1_master.o.d ${OBJECTDIR}/_ext/10662482/plib_tmr2.o.d ${OBJECTDIR}/_ext/330555317/plib_uart5.o.d ${OBJECTDIR}/_ext/330555317/plib_uart6.o.d ${OBJECTDIR}/_ext/330555317/plib_uart3.o.d ${OBJECTDIR}/_ext/330555317/plib_uart4.o.d ${OBJECTDIR}/_ext/330555317/plib_uart1.o.d ${OBJECTDIR}/_ext/330555317/plib_uart2.o.d ${OBJECTDIR}/_ext/1991269565/xc32_monitor.o.d ${OBJECTDIR}/_ext/1519118610/sys_cache.o.d ${OBJECTDIR}/_ext/1373644956/sys_dma.o.d ${OBJECTDIR}/_ext/1192657380/ff.o.d ${OBJECTDIR}/_ext/1192657380/ffunicode.o.d ${OBJECTDIR}/_ext/727274963/diskio.o.d ${OBJECTDIR}/_ext/252936118/sys_fs.o.d ${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o.d ${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o.d ${OBJECTDIR}/_ext/1832149040/sys_int.o.d ${OBJECTDIR}/_ext/1636986698/sys_time.o.d ${OBJECTDIR}/_ext/202551283/usb_device.o.d ${OBJECTDIR}/_ext/202551283/usb_device_cdc.o.d ${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o.d ${OBJECTDIR}/_ext/953055421/usb_device_init_data.o.d ${OBJECTDIR}/_ext/953055421/tasks.o.d ${OBJECTDIR}/_ext/953055421/initialization.o.d ${OBJECTDIR}/_ext/953055421/interrupts.o.d ${OBJECTDIR}/_ext/953055421/exceptions.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/communication.o.d ${OBJECTDIR}/_ext/1360937237/mdot.o.d ${OBJECTDIR}/_ext/1360937237/stringbuffer.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/757013429/drv_sdspi.o ${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o ${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o ${OBJECTDIR}/_ext/2120450970/drv_spi.o ${OBJECTDIR}/_ext/1783409726/drv_usbhs.o ${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o ${OBJECTDIR}/_ext/1640642171/plib_cache.o ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o ${OBJECTDIR}/_ext/10646107/plib_clk.o ${OBJECTDIR}/_ext/809018751/plib_coretimer.o ${OBJECTDIR}/_ext/330098546/plib_evic.o ${OBJECTDIR}/_ext/330152374/plib_gpio.o ${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o ${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o ${OBJECTDIR}/_ext/867254719/plib_spi4_master.o ${OBJECTDIR}/_ext/867254719/plib_spi2_master.o ${OBJECTDIR}/_ext/867254719/plib_spi1_master.o ${OBJECTDIR}/_ext/10662482/plib_tmr2.o ${OBJECTDIR}/_ext/330555317/plib_uart5.o ${OBJECTDIR}/_ext/330555317/plib_uart6.o ${OBJECTDIR}/_ext/330555317/plib_uart3.o ${OBJECTDIR}/_ext/330555317/plib_uart4.o ${OBJECTDIR}/_ext/330555317/plib_uart1.o ${OBJECTDIR}/_ext/330555317/plib_uart2.o ${OBJECTDIR}/_ext/1991269565/xc32_monitor.o ${OBJECTDIR}/_ext/1519118610/sys_cache.o ${OBJECTDIR}/_ext/1373644956/sys_dma.o ${OBJECTDIR}/_ext/1192657380/ff.o ${OBJECTDIR}/_ext/1192657380/ffunicode.o ${OBJECTDIR}/_ext/727274963/diskio.o ${OBJECTDIR}/_ext/252936118/sys_fs.o ${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o ${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o ${OBJECTDIR}/_ext/1832149040/sys_int.o ${OBJECTDIR}/_ext/1636986698/sys_time.o ${OBJECTDIR}/_ext/202551283/usb_device.o ${OBJECTDIR}/_ext/202551283/usb_device_cdc.o ${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o ${OBJECTDIR}/_ext/953055421/usb_device_init_data.o ${OBJECTDIR}/_ext/953055421/tasks.o ${OBJECTDIR}/_ext/953055421/initialization.o ${OBJECTDIR}/_ext/953055421/interrupts.o ${OBJECTDIR}/_ext/953055421/exceptions.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/communication.o ${OBJECTDIR}/_ext/1360937237/mdot.o ${OBJECTDIR}/_ext/1360937237/stringbuffer.o

# Source Files
SOURCEFILES=../src/config/pic32mz/driver/sdspi/src/drv_sdspi.c ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_driver_interface.c ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_file_system.c ../src/config/pic32mz/driver/spi/src/drv_spi.c ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs.c ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs_device.c ../src/config/pic32mz/peripheral/cache/plib_cache.c ../src/config/pic32mz/peripheral/cache/plib_cache_pic32mz.S ../src/config/pic32mz/peripheral/clk/plib_clk.c ../src/config/pic32mz/peripheral/coretimer/plib_coretimer.c ../src/config/pic32mz/peripheral/evic/plib_evic.c ../src/config/pic32mz/peripheral/gpio/plib_gpio.c ../src/config/pic32mz/peripheral/i2c/master/plib_i2c2_master.c ../src/config/pic32mz/peripheral/i2c/master/plib_i2c4_master.c ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi4_master.c ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi2_master.c ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/pic32mz/peripheral/tmr/plib_tmr2.c ../src/config/pic32mz/peripheral/uart/plib_uart5.c ../src/config/pic32mz/peripheral/uart/plib_uart6.c ../src/config/pic32mz/peripheral/uart/plib_uart3.c ../src/config/pic32mz/peripheral/uart/plib_uart4.c ../src/config/pic32mz/peripheral/uart/plib_uart1.c ../src/config/pic32mz/peripheral/uart/plib_uart2.c ../src/config/pic32mz/stdio/xc32_monitor.c ../src/config/pic32mz/system/cache/sys_cache.c ../src/config/pic32mz/system/dma/sys_dma.c ../src/config/pic32mz/system/fs/fat_fs/file_system/ff.c ../src/config/pic32mz/system/fs/fat_fs/file_system/ffunicode.c ../src/config/pic32mz/system/fs/fat_fs/hardware_access/diskio.c ../src/config/pic32mz/system/fs/src/sys_fs.c ../src/config/pic32mz/system/fs/src/sys_fs_media_manager.c ../src/config/pic32mz/system/fs/src/sys_fs_fat_interface.c ../src/config/pic32mz/system/int/src/sys_int.c ../src/config/pic32mz/system/time/src/sys_time.c ../src/config/pic32mz/usb/src/usb_device.c ../src/config/pic32mz/usb/src/usb_device_cdc.c ../src/config/pic32mz/usb/src/usb_device_cdc_acm.c ../src/config/pic32mz/usb_device_init_data.c ../src/config/pic32mz/tasks.c ../src/config/pic32mz/initialization.c ../src/config/pic32mz/interrupts.c ../src/config/pic32mz/exceptions.c ../src/app.c ../src/main.c ../src/communication.c ../src/mdot.c ../src/stringbuffer.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-pic32mz.mk ${DISTDIR}/GHG_App_V1.0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFG144
MP_LINKER_FILE_OPTION=,--script="..\src\config\pic32mz\p32MZ2048EFG144.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o: ../src/config/pic32mz/peripheral/cache/plib_cache_pic32mz.S  .generated_files/flags/pic32mz/ebc0d187395d6855db8dd70bbd34aef206cfe086 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1640642171" 
	@${RM} ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o ../src/config/pic32mz/peripheral/cache/plib_cache_pic32mz.S  -DXPRJ_pic32mz=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD4=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o: ../src/config/pic32mz/peripheral/cache/plib_cache_pic32mz.S  .generated_files/flags/pic32mz/4fabcbb1de8970c4f44cd909a962800d883f7644 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1640642171" 
	@${RM} ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o ../src/config/pic32mz/peripheral/cache/plib_cache_pic32mz.S  -DXPRJ_pic32mz=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/757013429/drv_sdspi.o: ../src/config/pic32mz/driver/sdspi/src/drv_sdspi.c  .generated_files/flags/pic32mz/d478b7591dd15ee4c09e05f4f9c5bb1668c0bf05 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/757013429" 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi.o.d 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/757013429/drv_sdspi.o.d" -o ${OBJECTDIR}/_ext/757013429/drv_sdspi.o ../src/config/pic32mz/driver/sdspi/src/drv_sdspi.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o: ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_driver_interface.c  .generated_files/flags/pic32mz/8f9e69a77c287bb57f28ac3e835819799f4e6423 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/757013429" 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o.d" -o ${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_driver_interface.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o: ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_file_system.c  .generated_files/flags/pic32mz/8ca1aefb04d1a720d79d04355736a1aacf5406b6 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/757013429" 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o.d" -o ${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_file_system.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2120450970/drv_spi.o: ../src/config/pic32mz/driver/spi/src/drv_spi.c  .generated_files/flags/pic32mz/c38badd9a71358a9138704cc2c1299c8926f8bf1 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/2120450970" 
	@${RM} ${OBJECTDIR}/_ext/2120450970/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/2120450970/drv_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2120450970/drv_spi.o.d" -o ${OBJECTDIR}/_ext/2120450970/drv_spi.o ../src/config/pic32mz/driver/spi/src/drv_spi.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1783409726/drv_usbhs.o: ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs.c  .generated_files/flags/pic32mz/694f176853ebf9aca95237a926abc2cb49d8a60 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1783409726" 
	@${RM} ${OBJECTDIR}/_ext/1783409726/drv_usbhs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1783409726/drv_usbhs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1783409726/drv_usbhs.o.d" -o ${OBJECTDIR}/_ext/1783409726/drv_usbhs.o ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o: ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs_device.c  .generated_files/flags/pic32mz/3de398e8bc20765b30056b9ac516a0d9d4f274de .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1783409726" 
	@${RM} ${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o.d" -o ${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs_device.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1640642171/plib_cache.o: ../src/config/pic32mz/peripheral/cache/plib_cache.c  .generated_files/flags/pic32mz/c572d90b9841d7022a3135a4026afb58218a0d7a .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1640642171" 
	@${RM} ${OBJECTDIR}/_ext/1640642171/plib_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1640642171/plib_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1640642171/plib_cache.o.d" -o ${OBJECTDIR}/_ext/1640642171/plib_cache.o ../src/config/pic32mz/peripheral/cache/plib_cache.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/10646107/plib_clk.o: ../src/config/pic32mz/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mz/e54f7e7909ae1906ae793e6af3956a243d745b17 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/10646107" 
	@${RM} ${OBJECTDIR}/_ext/10646107/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/10646107/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/10646107/plib_clk.o.d" -o ${OBJECTDIR}/_ext/10646107/plib_clk.o ../src/config/pic32mz/peripheral/clk/plib_clk.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/809018751/plib_coretimer.o: ../src/config/pic32mz/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/pic32mz/6cbe7ce3318d261c7c6e61e5b4e6abdc55f5c162 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/809018751" 
	@${RM} ${OBJECTDIR}/_ext/809018751/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/809018751/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/809018751/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/809018751/plib_coretimer.o ../src/config/pic32mz/peripheral/coretimer/plib_coretimer.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330098546/plib_evic.o: ../src/config/pic32mz/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mz/e41696ed6b63212852a32956a5d58b3b3ce74aaf .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330098546" 
	@${RM} ${OBJECTDIR}/_ext/330098546/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/330098546/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330098546/plib_evic.o.d" -o ${OBJECTDIR}/_ext/330098546/plib_evic.o ../src/config/pic32mz/peripheral/evic/plib_evic.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330152374/plib_gpio.o: ../src/config/pic32mz/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mz/b90c31905d223ee6c636c228eef9afbac62c731e .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330152374" 
	@${RM} ${OBJECTDIR}/_ext/330152374/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/330152374/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330152374/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/330152374/plib_gpio.o ../src/config/pic32mz/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o: ../src/config/pic32mz/peripheral/i2c/master/plib_i2c2_master.c  .generated_files/flags/pic32mz/bfaa511136a556ae6611c2f6a248cd204e8516f3 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/249272802" 
	@${RM} ${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o.d" -o ${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o ../src/config/pic32mz/peripheral/i2c/master/plib_i2c2_master.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o: ../src/config/pic32mz/peripheral/i2c/master/plib_i2c4_master.c  .generated_files/flags/pic32mz/8affdf9600f4360f5e461b68e7290f82b1706500 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/249272802" 
	@${RM} ${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o.d" -o ${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o ../src/config/pic32mz/peripheral/i2c/master/plib_i2c4_master.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/867254719/plib_spi4_master.o: ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi4_master.c  .generated_files/flags/pic32mz/79ab524f1d8111b1ab1f80692fafcdde12aa5cf2 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/867254719" 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi4_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi4_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/867254719/plib_spi4_master.o.d" -o ${OBJECTDIR}/_ext/867254719/plib_spi4_master.o ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi4_master.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/867254719/plib_spi2_master.o: ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi2_master.c  .generated_files/flags/pic32mz/6b789921d4ae647f8b82df34d65116ae88cb4887 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/867254719" 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/867254719/plib_spi2_master.o.d" -o ${OBJECTDIR}/_ext/867254719/plib_spi2_master.o ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi2_master.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/867254719/plib_spi1_master.o: ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/pic32mz/14548f03ba444c3d529c5ceb79375e701f4e1688 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/867254719" 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/867254719/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/867254719/plib_spi1_master.o ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/10662482/plib_tmr2.o: ../src/config/pic32mz/peripheral/tmr/plib_tmr2.c  .generated_files/flags/pic32mz/7ff867744935fef979871d4dc94527c6dfb4f12c .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/10662482" 
	@${RM} ${OBJECTDIR}/_ext/10662482/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/10662482/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/10662482/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/10662482/plib_tmr2.o ../src/config/pic32mz/peripheral/tmr/plib_tmr2.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart5.o: ../src/config/pic32mz/peripheral/uart/plib_uart5.c  .generated_files/flags/pic32mz/f32cf845f3e9e3fb12e116ba2d0fe6154ffd9494 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart5.o ../src/config/pic32mz/peripheral/uart/plib_uart5.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart6.o: ../src/config/pic32mz/peripheral/uart/plib_uart6.c  .generated_files/flags/pic32mz/255d9ed819ef8189c5f748876d35ab19126511d3 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart6.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart6.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart6.o ../src/config/pic32mz/peripheral/uart/plib_uart6.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart3.o: ../src/config/pic32mz/peripheral/uart/plib_uart3.c  .generated_files/flags/pic32mz/a7831d0a67d34f3adad678a85570d0906c258cce .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart3.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart3.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart3.o ../src/config/pic32mz/peripheral/uart/plib_uart3.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart4.o: ../src/config/pic32mz/peripheral/uart/plib_uart4.c  .generated_files/flags/pic32mz/8c3824518f0281c01ce315068ae41a04d4003ffd .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart4.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart4.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart4.o ../src/config/pic32mz/peripheral/uart/plib_uart4.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart1.o: ../src/config/pic32mz/peripheral/uart/plib_uart1.c  .generated_files/flags/pic32mz/f0bd7f9963dc83a2b0b8315cd9f42469455fd206 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart1.o ../src/config/pic32mz/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart2.o: ../src/config/pic32mz/peripheral/uart/plib_uart2.c  .generated_files/flags/pic32mz/c6df26e6ad21234e14b1b6600c003168326c08c8 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart2.o ../src/config/pic32mz/peripheral/uart/plib_uart2.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1991269565/xc32_monitor.o: ../src/config/pic32mz/stdio/xc32_monitor.c  .generated_files/flags/pic32mz/b7e79d8d7d57820a0f27b8bb50a74bc9e4313bf1 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1991269565" 
	@${RM} ${OBJECTDIR}/_ext/1991269565/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1991269565/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1991269565/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1991269565/xc32_monitor.o ../src/config/pic32mz/stdio/xc32_monitor.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1519118610/sys_cache.o: ../src/config/pic32mz/system/cache/sys_cache.c  .generated_files/flags/pic32mz/74834a8a548cefd717a6d5547fa92dc4a3fcf2da .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1519118610" 
	@${RM} ${OBJECTDIR}/_ext/1519118610/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1519118610/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1519118610/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1519118610/sys_cache.o ../src/config/pic32mz/system/cache/sys_cache.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1373644956/sys_dma.o: ../src/config/pic32mz/system/dma/sys_dma.c  .generated_files/flags/pic32mz/5d8223cd6f5b283e3827cdda52e39c6bfccae665 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1373644956" 
	@${RM} ${OBJECTDIR}/_ext/1373644956/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/1373644956/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1373644956/sys_dma.o.d" -o ${OBJECTDIR}/_ext/1373644956/sys_dma.o ../src/config/pic32mz/system/dma/sys_dma.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1192657380/ff.o: ../src/config/pic32mz/system/fs/fat_fs/file_system/ff.c  .generated_files/flags/pic32mz/d8e2eb4364d35c749f44573baa43f20514cf6dfe .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1192657380" 
	@${RM} ${OBJECTDIR}/_ext/1192657380/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1192657380/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1192657380/ff.o.d" -o ${OBJECTDIR}/_ext/1192657380/ff.o ../src/config/pic32mz/system/fs/fat_fs/file_system/ff.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1192657380/ffunicode.o: ../src/config/pic32mz/system/fs/fat_fs/file_system/ffunicode.c  .generated_files/flags/pic32mz/8af634f5bbdbe12dfedba1127525f0ff80039b64 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1192657380" 
	@${RM} ${OBJECTDIR}/_ext/1192657380/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1192657380/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1192657380/ffunicode.o.d" -o ${OBJECTDIR}/_ext/1192657380/ffunicode.o ../src/config/pic32mz/system/fs/fat_fs/file_system/ffunicode.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/727274963/diskio.o: ../src/config/pic32mz/system/fs/fat_fs/hardware_access/diskio.c  .generated_files/flags/pic32mz/3891d712258f3a26abbb1f4c53adc592093ebb4d .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/727274963" 
	@${RM} ${OBJECTDIR}/_ext/727274963/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/727274963/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/727274963/diskio.o.d" -o ${OBJECTDIR}/_ext/727274963/diskio.o ../src/config/pic32mz/system/fs/fat_fs/hardware_access/diskio.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/252936118/sys_fs.o: ../src/config/pic32mz/system/fs/src/sys_fs.c  .generated_files/flags/pic32mz/f68f8e8c4d306dda3015bc96a3946e526750d475 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/252936118" 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/252936118/sys_fs.o.d" -o ${OBJECTDIR}/_ext/252936118/sys_fs.o ../src/config/pic32mz/system/fs/src/sys_fs.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o: ../src/config/pic32mz/system/fs/src/sys_fs_media_manager.c  .generated_files/flags/pic32mz/7db49f5d22170d66a77e02a0a58a7a8c3a176cd4 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/252936118" 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o ../src/config/pic32mz/system/fs/src/sys_fs_media_manager.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o: ../src/config/pic32mz/system/fs/src/sys_fs_fat_interface.c  .generated_files/flags/pic32mz/b3c266c01ba9662b002d9b7f083fc8bacfa2205c .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/252936118" 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o.d" -o ${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o ../src/config/pic32mz/system/fs/src/sys_fs_fat_interface.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1832149040/sys_int.o: ../src/config/pic32mz/system/int/src/sys_int.c  .generated_files/flags/pic32mz/2566d89d43904fffb3bbbe7c60c384166be2320 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1832149040" 
	@${RM} ${OBJECTDIR}/_ext/1832149040/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832149040/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832149040/sys_int.o.d" -o ${OBJECTDIR}/_ext/1832149040/sys_int.o ../src/config/pic32mz/system/int/src/sys_int.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1636986698/sys_time.o: ../src/config/pic32mz/system/time/src/sys_time.c  .generated_files/flags/pic32mz/8be18118353ae6f677c42209a02f1267d55944ce .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1636986698" 
	@${RM} ${OBJECTDIR}/_ext/1636986698/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1636986698/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1636986698/sys_time.o.d" -o ${OBJECTDIR}/_ext/1636986698/sys_time.o ../src/config/pic32mz/system/time/src/sys_time.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/202551283/usb_device.o: ../src/config/pic32mz/usb/src/usb_device.c  .generated_files/flags/pic32mz/3689a88ac8adbe8a70d8350864b7403b0043d2ce .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/202551283" 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/202551283/usb_device.o.d" -o ${OBJECTDIR}/_ext/202551283/usb_device.o ../src/config/pic32mz/usb/src/usb_device.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/202551283/usb_device_cdc.o: ../src/config/pic32mz/usb/src/usb_device_cdc.c  .generated_files/flags/pic32mz/5183b0414a4e0bad978a39c784d6d2cd105f64d .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/202551283" 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/202551283/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/202551283/usb_device_cdc.o ../src/config/pic32mz/usb/src/usb_device_cdc.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o: ../src/config/pic32mz/usb/src/usb_device_cdc_acm.c  .generated_files/flags/pic32mz/6f1693e6ec6dae70f379f7a584b1ba1d06bc03e1 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/202551283" 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o ../src/config/pic32mz/usb/src/usb_device_cdc_acm.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/953055421/usb_device_init_data.o: ../src/config/pic32mz/usb_device_init_data.c  .generated_files/flags/pic32mz/8ccc2e44e7fc9d5f7065f8f4eaa12c3d135ff66e .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/953055421" 
	@${RM} ${OBJECTDIR}/_ext/953055421/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/953055421/usb_device_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/953055421/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/953055421/usb_device_init_data.o ../src/config/pic32mz/usb_device_init_data.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/953055421/tasks.o: ../src/config/pic32mz/tasks.c  .generated_files/flags/pic32mz/cdf217f8c707dbfb2acb9a8e61cc3f133f422fab .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/953055421" 
	@${RM} ${OBJECTDIR}/_ext/953055421/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/953055421/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/953055421/tasks.o.d" -o ${OBJECTDIR}/_ext/953055421/tasks.o ../src/config/pic32mz/tasks.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/953055421/initialization.o: ../src/config/pic32mz/initialization.c  .generated_files/flags/pic32mz/87b0d44534950eda1fc057e4f5b7bf1b3136f79b .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/953055421" 
	@${RM} ${OBJECTDIR}/_ext/953055421/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/953055421/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/953055421/initialization.o.d" -o ${OBJECTDIR}/_ext/953055421/initialization.o ../src/config/pic32mz/initialization.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/953055421/interrupts.o: ../src/config/pic32mz/interrupts.c  .generated_files/flags/pic32mz/6049455fd98204d005ed6fb74f35b6a21b7c677 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/953055421" 
	@${RM} ${OBJECTDIR}/_ext/953055421/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/953055421/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/953055421/interrupts.o.d" -o ${OBJECTDIR}/_ext/953055421/interrupts.o ../src/config/pic32mz/interrupts.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/953055421/exceptions.o: ../src/config/pic32mz/exceptions.c  .generated_files/flags/pic32mz/3061908a9e2db2b6b4ed0b0361338bdcad7c5f92 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/953055421" 
	@${RM} ${OBJECTDIR}/_ext/953055421/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/953055421/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/953055421/exceptions.o.d" -o ${OBJECTDIR}/_ext/953055421/exceptions.o ../src/config/pic32mz/exceptions.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mz/16b789e70acbff340c32c99e39ba986fd8a4e015 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz/c3d98e62fcb9dff279ebec408a0416a4de2c96ed .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/communication.o: ../src/communication.c  .generated_files/flags/pic32mz/952a2ef9a6c384f1c2b3af323c1a279bdb9ee5d3 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/communication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/communication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/communication.o.d" -o ${OBJECTDIR}/_ext/1360937237/communication.o ../src/communication.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/mdot.o: ../src/mdot.c  .generated_files/flags/pic32mz/5c8bae02c848c780510e17d613b48dcfdc343616 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mdot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mdot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mdot.o.d" -o ${OBJECTDIR}/_ext/1360937237/mdot.o ../src/mdot.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/stringbuffer.o: ../src/stringbuffer.c  .generated_files/flags/pic32mz/5404687bc53114c2a471a46024bb55df246312f6 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/stringbuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/stringbuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/stringbuffer.o.d" -o ${OBJECTDIR}/_ext/1360937237/stringbuffer.o ../src/stringbuffer.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/757013429/drv_sdspi.o: ../src/config/pic32mz/driver/sdspi/src/drv_sdspi.c  .generated_files/flags/pic32mz/1064859676d9195989b888e703111a757701fd42 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/757013429" 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi.o.d 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/757013429/drv_sdspi.o.d" -o ${OBJECTDIR}/_ext/757013429/drv_sdspi.o ../src/config/pic32mz/driver/sdspi/src/drv_sdspi.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o: ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_driver_interface.c  .generated_files/flags/pic32mz/8f6678d5ab8bcb230ba0aa4b6ce28e110a118c89 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/757013429" 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o.d" -o ${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_driver_interface.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o: ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_file_system.c  .generated_files/flags/pic32mz/a115deb0abdc17bfe169e70f22b05381ae43d557 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/757013429" 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o.d" -o ${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_file_system.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2120450970/drv_spi.o: ../src/config/pic32mz/driver/spi/src/drv_spi.c  .generated_files/flags/pic32mz/5b4ac8204ea88bfbf040cc933b783da65d007c2a .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/2120450970" 
	@${RM} ${OBJECTDIR}/_ext/2120450970/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/2120450970/drv_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2120450970/drv_spi.o.d" -o ${OBJECTDIR}/_ext/2120450970/drv_spi.o ../src/config/pic32mz/driver/spi/src/drv_spi.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1783409726/drv_usbhs.o: ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs.c  .generated_files/flags/pic32mz/b76a24c684489d4d5c972a66ed845cdc7a603bda .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1783409726" 
	@${RM} ${OBJECTDIR}/_ext/1783409726/drv_usbhs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1783409726/drv_usbhs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1783409726/drv_usbhs.o.d" -o ${OBJECTDIR}/_ext/1783409726/drv_usbhs.o ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o: ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs_device.c  .generated_files/flags/pic32mz/fb60f846aea00c8a05376783ad45cbb5944d155d .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1783409726" 
	@${RM} ${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o.d" -o ${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs_device.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1640642171/plib_cache.o: ../src/config/pic32mz/peripheral/cache/plib_cache.c  .generated_files/flags/pic32mz/e7d8cdf19752970b8f75a41f58bdcef430bd1c8f .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1640642171" 
	@${RM} ${OBJECTDIR}/_ext/1640642171/plib_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1640642171/plib_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1640642171/plib_cache.o.d" -o ${OBJECTDIR}/_ext/1640642171/plib_cache.o ../src/config/pic32mz/peripheral/cache/plib_cache.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/10646107/plib_clk.o: ../src/config/pic32mz/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mz/6f638bf72cb8b50b90922e2ffd2edc9e0ac1da39 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/10646107" 
	@${RM} ${OBJECTDIR}/_ext/10646107/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/10646107/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/10646107/plib_clk.o.d" -o ${OBJECTDIR}/_ext/10646107/plib_clk.o ../src/config/pic32mz/peripheral/clk/plib_clk.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/809018751/plib_coretimer.o: ../src/config/pic32mz/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/pic32mz/a85fb79c9a313528b26577583a9bb165f5b96e8f .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/809018751" 
	@${RM} ${OBJECTDIR}/_ext/809018751/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/809018751/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/809018751/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/809018751/plib_coretimer.o ../src/config/pic32mz/peripheral/coretimer/plib_coretimer.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330098546/plib_evic.o: ../src/config/pic32mz/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mz/9ccac38834b87f2150d76c0cdbb122b75dddf0b9 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330098546" 
	@${RM} ${OBJECTDIR}/_ext/330098546/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/330098546/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330098546/plib_evic.o.d" -o ${OBJECTDIR}/_ext/330098546/plib_evic.o ../src/config/pic32mz/peripheral/evic/plib_evic.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330152374/plib_gpio.o: ../src/config/pic32mz/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mz/d87a1bef8d62b5629b8346993841a822016ee844 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330152374" 
	@${RM} ${OBJECTDIR}/_ext/330152374/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/330152374/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330152374/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/330152374/plib_gpio.o ../src/config/pic32mz/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o: ../src/config/pic32mz/peripheral/i2c/master/plib_i2c2_master.c  .generated_files/flags/pic32mz/d19067f763e9a1c2934645aa414e72f9c4695b80 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/249272802" 
	@${RM} ${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o.d" -o ${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o ../src/config/pic32mz/peripheral/i2c/master/plib_i2c2_master.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o: ../src/config/pic32mz/peripheral/i2c/master/plib_i2c4_master.c  .generated_files/flags/pic32mz/9b76fc0f18869a7dabc6c0a87d707e886dada6ce .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/249272802" 
	@${RM} ${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o.d" -o ${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o ../src/config/pic32mz/peripheral/i2c/master/plib_i2c4_master.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/867254719/plib_spi4_master.o: ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi4_master.c  .generated_files/flags/pic32mz/111230c7a37c53c13766487d6c56e224aba141ea .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/867254719" 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi4_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi4_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/867254719/plib_spi4_master.o.d" -o ${OBJECTDIR}/_ext/867254719/plib_spi4_master.o ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi4_master.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/867254719/plib_spi2_master.o: ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi2_master.c  .generated_files/flags/pic32mz/91914d4ef1d367c3ed0e1ab42a74b481ae56fd1e .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/867254719" 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/867254719/plib_spi2_master.o.d" -o ${OBJECTDIR}/_ext/867254719/plib_spi2_master.o ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi2_master.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/867254719/plib_spi1_master.o: ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/pic32mz/126bd89e2caa8a75c059bb42971720c743f601cd .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/867254719" 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/867254719/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/867254719/plib_spi1_master.o ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/10662482/plib_tmr2.o: ../src/config/pic32mz/peripheral/tmr/plib_tmr2.c  .generated_files/flags/pic32mz/dcd6b7b67da98d4b17c76db96cf5c00e4de0bc19 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/10662482" 
	@${RM} ${OBJECTDIR}/_ext/10662482/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/10662482/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/10662482/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/10662482/plib_tmr2.o ../src/config/pic32mz/peripheral/tmr/plib_tmr2.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart5.o: ../src/config/pic32mz/peripheral/uart/plib_uart5.c  .generated_files/flags/pic32mz/2b5a33d2a2dc7d408702bd7c06f0bea6b8a1bc28 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart5.o ../src/config/pic32mz/peripheral/uart/plib_uart5.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart6.o: ../src/config/pic32mz/peripheral/uart/plib_uart6.c  .generated_files/flags/pic32mz/b1cc76aa656c8c03297a4332574481db171caa8 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart6.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart6.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart6.o ../src/config/pic32mz/peripheral/uart/plib_uart6.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart3.o: ../src/config/pic32mz/peripheral/uart/plib_uart3.c  .generated_files/flags/pic32mz/79e186044b70d7cac295401d19a948e1d7b96ce9 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart3.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart3.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart3.o ../src/config/pic32mz/peripheral/uart/plib_uart3.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart4.o: ../src/config/pic32mz/peripheral/uart/plib_uart4.c  .generated_files/flags/pic32mz/cbc4e06f8e722faf8f0e440979c2beaf72d00bc9 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart4.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart4.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart4.o ../src/config/pic32mz/peripheral/uart/plib_uart4.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart1.o: ../src/config/pic32mz/peripheral/uart/plib_uart1.c  .generated_files/flags/pic32mz/42bbb6d8784b98f1d4d877851dae1fbfc5638d67 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart1.o ../src/config/pic32mz/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart2.o: ../src/config/pic32mz/peripheral/uart/plib_uart2.c  .generated_files/flags/pic32mz/fb480d0efefd5192ee789852e27e2cb120f11732 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart2.o ../src/config/pic32mz/peripheral/uart/plib_uart2.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1991269565/xc32_monitor.o: ../src/config/pic32mz/stdio/xc32_monitor.c  .generated_files/flags/pic32mz/2bb71a198d2662dca65b204cea2096e6d635c308 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1991269565" 
	@${RM} ${OBJECTDIR}/_ext/1991269565/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1991269565/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1991269565/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1991269565/xc32_monitor.o ../src/config/pic32mz/stdio/xc32_monitor.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1519118610/sys_cache.o: ../src/config/pic32mz/system/cache/sys_cache.c  .generated_files/flags/pic32mz/7910a60d8c563fe54aaafacb9968c340d651d24a .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1519118610" 
	@${RM} ${OBJECTDIR}/_ext/1519118610/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1519118610/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1519118610/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1519118610/sys_cache.o ../src/config/pic32mz/system/cache/sys_cache.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1373644956/sys_dma.o: ../src/config/pic32mz/system/dma/sys_dma.c  .generated_files/flags/pic32mz/7d2aad81c7fcfa473d77c9ffe17043ebb0584fbe .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1373644956" 
	@${RM} ${OBJECTDIR}/_ext/1373644956/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/1373644956/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1373644956/sys_dma.o.d" -o ${OBJECTDIR}/_ext/1373644956/sys_dma.o ../src/config/pic32mz/system/dma/sys_dma.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1192657380/ff.o: ../src/config/pic32mz/system/fs/fat_fs/file_system/ff.c  .generated_files/flags/pic32mz/2e075ab2a793da68dd7da2ee0c1680b1ab258a34 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1192657380" 
	@${RM} ${OBJECTDIR}/_ext/1192657380/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1192657380/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1192657380/ff.o.d" -o ${OBJECTDIR}/_ext/1192657380/ff.o ../src/config/pic32mz/system/fs/fat_fs/file_system/ff.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1192657380/ffunicode.o: ../src/config/pic32mz/system/fs/fat_fs/file_system/ffunicode.c  .generated_files/flags/pic32mz/1a3a9f094c88741036529efd07e5d7753fc4c8c0 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1192657380" 
	@${RM} ${OBJECTDIR}/_ext/1192657380/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1192657380/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1192657380/ffunicode.o.d" -o ${OBJECTDIR}/_ext/1192657380/ffunicode.o ../src/config/pic32mz/system/fs/fat_fs/file_system/ffunicode.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/727274963/diskio.o: ../src/config/pic32mz/system/fs/fat_fs/hardware_access/diskio.c  .generated_files/flags/pic32mz/f706f8df0d2a3eb654c082660778538ac890cbb .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/727274963" 
	@${RM} ${OBJECTDIR}/_ext/727274963/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/727274963/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/727274963/diskio.o.d" -o ${OBJECTDIR}/_ext/727274963/diskio.o ../src/config/pic32mz/system/fs/fat_fs/hardware_access/diskio.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/252936118/sys_fs.o: ../src/config/pic32mz/system/fs/src/sys_fs.c  .generated_files/flags/pic32mz/f41d62cdd1bfd77a530cb596750fa7204ad4f905 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/252936118" 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/252936118/sys_fs.o.d" -o ${OBJECTDIR}/_ext/252936118/sys_fs.o ../src/config/pic32mz/system/fs/src/sys_fs.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o: ../src/config/pic32mz/system/fs/src/sys_fs_media_manager.c  .generated_files/flags/pic32mz/d7f3b8674d8c53c58341353917f4bb333c3c1345 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/252936118" 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o ../src/config/pic32mz/system/fs/src/sys_fs_media_manager.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o: ../src/config/pic32mz/system/fs/src/sys_fs_fat_interface.c  .generated_files/flags/pic32mz/94a94df38bcc7aa68189d44c60a5c38a3788140e .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/252936118" 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o.d" -o ${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o ../src/config/pic32mz/system/fs/src/sys_fs_fat_interface.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1832149040/sys_int.o: ../src/config/pic32mz/system/int/src/sys_int.c  .generated_files/flags/pic32mz/6ffe0cace53288237aa342b1528275f9f4744677 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1832149040" 
	@${RM} ${OBJECTDIR}/_ext/1832149040/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832149040/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832149040/sys_int.o.d" -o ${OBJECTDIR}/_ext/1832149040/sys_int.o ../src/config/pic32mz/system/int/src/sys_int.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1636986698/sys_time.o: ../src/config/pic32mz/system/time/src/sys_time.c  .generated_files/flags/pic32mz/c144fa9abc519d6626c64b822ac43a164e8656eb .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1636986698" 
	@${RM} ${OBJECTDIR}/_ext/1636986698/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1636986698/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1636986698/sys_time.o.d" -o ${OBJECTDIR}/_ext/1636986698/sys_time.o ../src/config/pic32mz/system/time/src/sys_time.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/202551283/usb_device.o: ../src/config/pic32mz/usb/src/usb_device.c  .generated_files/flags/pic32mz/d97b36b9718ae40ad08af384a3b5319eea452884 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/202551283" 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/202551283/usb_device.o.d" -o ${OBJECTDIR}/_ext/202551283/usb_device.o ../src/config/pic32mz/usb/src/usb_device.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/202551283/usb_device_cdc.o: ../src/config/pic32mz/usb/src/usb_device_cdc.c  .generated_files/flags/pic32mz/b9c7aad1d3822ab3a3918e40b366bfbdb47eb009 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/202551283" 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/202551283/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/202551283/usb_device_cdc.o ../src/config/pic32mz/usb/src/usb_device_cdc.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o: ../src/config/pic32mz/usb/src/usb_device_cdc_acm.c  .generated_files/flags/pic32mz/44c7225b6c76810bf088dadeafe900d1d8f298b0 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/202551283" 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o ../src/config/pic32mz/usb/src/usb_device_cdc_acm.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/953055421/usb_device_init_data.o: ../src/config/pic32mz/usb_device_init_data.c  .generated_files/flags/pic32mz/877383641ec225cb5eb5b215099af289cffc7911 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/953055421" 
	@${RM} ${OBJECTDIR}/_ext/953055421/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/953055421/usb_device_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/953055421/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/953055421/usb_device_init_data.o ../src/config/pic32mz/usb_device_init_data.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/953055421/tasks.o: ../src/config/pic32mz/tasks.c  .generated_files/flags/pic32mz/cdb00e839d75f5ba5cd31414018fe7530a32c329 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/953055421" 
	@${RM} ${OBJECTDIR}/_ext/953055421/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/953055421/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/953055421/tasks.o.d" -o ${OBJECTDIR}/_ext/953055421/tasks.o ../src/config/pic32mz/tasks.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/953055421/initialization.o: ../src/config/pic32mz/initialization.c  .generated_files/flags/pic32mz/f0d2a600974a16142a7746fecef5d03cb58e12a7 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/953055421" 
	@${RM} ${OBJECTDIR}/_ext/953055421/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/953055421/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/953055421/initialization.o.d" -o ${OBJECTDIR}/_ext/953055421/initialization.o ../src/config/pic32mz/initialization.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/953055421/interrupts.o: ../src/config/pic32mz/interrupts.c  .generated_files/flags/pic32mz/f06e803150ecf2243c01ec50ef708f974bbfc640 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/953055421" 
	@${RM} ${OBJECTDIR}/_ext/953055421/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/953055421/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/953055421/interrupts.o.d" -o ${OBJECTDIR}/_ext/953055421/interrupts.o ../src/config/pic32mz/interrupts.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/953055421/exceptions.o: ../src/config/pic32mz/exceptions.c  .generated_files/flags/pic32mz/8d3586ed0a74d6d1389736abef32264033057b2 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/953055421" 
	@${RM} ${OBJECTDIR}/_ext/953055421/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/953055421/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/953055421/exceptions.o.d" -o ${OBJECTDIR}/_ext/953055421/exceptions.o ../src/config/pic32mz/exceptions.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mz/9c13e8b4cc35d6a4112ca667427cf232c63a9b12 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz/4f78bcb037be5776ec0d4d1b8d878a1bafee754c .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/communication.o: ../src/communication.c  .generated_files/flags/pic32mz/252f902985f8b614676c3223b76790459dd8d23 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/communication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/communication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/communication.o.d" -o ${OBJECTDIR}/_ext/1360937237/communication.o ../src/communication.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/mdot.o: ../src/mdot.c  .generated_files/flags/pic32mz/ba75ca8760735c46ab5468eb9d7baa461eea688f .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mdot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mdot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mdot.o.d" -o ${OBJECTDIR}/_ext/1360937237/mdot.o ../src/mdot.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/stringbuffer.o: ../src/stringbuffer.c  .generated_files/flags/pic32mz/df7cacae0301370035e42473ced915f22a532f6a .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/stringbuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/stringbuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/stringbuffer.o.d" -o ${OBJECTDIR}/_ext/1360937237/stringbuffer.o ../src/stringbuffer.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/GHG_App_V1.0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/pic32mz/p32MZ2048EFG144.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_ICD4=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/GHG_App_V1.0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_ICD4=1,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/GHG_App_V1.0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/pic32mz/p32MZ2048EFG144.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/GHG_App_V1.0.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/GHG_App_V1.0.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
