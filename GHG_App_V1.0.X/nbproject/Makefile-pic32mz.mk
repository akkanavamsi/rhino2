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
${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o: ../src/config/pic32mz/peripheral/cache/plib_cache_pic32mz.S  .generated_files/flags/pic32mz/179dfa2a7fa0a2952b690313b17f696e4e052613 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1640642171" 
	@${RM} ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o ../src/config/pic32mz/peripheral/cache/plib_cache_pic32mz.S  -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD4=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o: ../src/config/pic32mz/peripheral/cache/plib_cache_pic32mz.S  .generated_files/flags/pic32mz/10d1f1d2729e19040bab6971c9c7d7a139948146 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1640642171" 
	@${RM} ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o ../src/config/pic32mz/peripheral/cache/plib_cache_pic32mz.S  -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/757013429/drv_sdspi.o: ../src/config/pic32mz/driver/sdspi/src/drv_sdspi.c  .generated_files/flags/pic32mz/a29f74d926456445807d83feb8e77cf554667cb1 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/757013429" 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi.o.d 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/757013429/drv_sdspi.o.d" -o ${OBJECTDIR}/_ext/757013429/drv_sdspi.o ../src/config/pic32mz/driver/sdspi/src/drv_sdspi.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o: ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_driver_interface.c  .generated_files/flags/pic32mz/65c0f7be1342a724ca3513e2cd15427794499ea1 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/757013429" 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o.d" -o ${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_driver_interface.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o: ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_file_system.c  .generated_files/flags/pic32mz/bc0316724eb16eb2127e0d3821dfa1b4e39bdfd .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/757013429" 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o.d" -o ${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_file_system.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2120450970/drv_spi.o: ../src/config/pic32mz/driver/spi/src/drv_spi.c  .generated_files/flags/pic32mz/a701a3789d8b590bafdd33755ca120388a108d24 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2120450970" 
	@${RM} ${OBJECTDIR}/_ext/2120450970/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/2120450970/drv_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2120450970/drv_spi.o.d" -o ${OBJECTDIR}/_ext/2120450970/drv_spi.o ../src/config/pic32mz/driver/spi/src/drv_spi.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1783409726/drv_usbhs.o: ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs.c  .generated_files/flags/pic32mz/46e0daff166a156585af0055a23b0ec6687fa901 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1783409726" 
	@${RM} ${OBJECTDIR}/_ext/1783409726/drv_usbhs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1783409726/drv_usbhs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1783409726/drv_usbhs.o.d" -o ${OBJECTDIR}/_ext/1783409726/drv_usbhs.o ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o: ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs_device.c  .generated_files/flags/pic32mz/e7e7d557137e56d157e926bc57502a0c1212daf9 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1783409726" 
	@${RM} ${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o.d" -o ${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs_device.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1640642171/plib_cache.o: ../src/config/pic32mz/peripheral/cache/plib_cache.c  .generated_files/flags/pic32mz/fedf0db7f3d43bcbc15155324a35ea80f040f059 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1640642171" 
	@${RM} ${OBJECTDIR}/_ext/1640642171/plib_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1640642171/plib_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1640642171/plib_cache.o.d" -o ${OBJECTDIR}/_ext/1640642171/plib_cache.o ../src/config/pic32mz/peripheral/cache/plib_cache.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/10646107/plib_clk.o: ../src/config/pic32mz/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mz/c3cbe0674adea267f63c63c88613c0bf189f203c .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/10646107" 
	@${RM} ${OBJECTDIR}/_ext/10646107/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/10646107/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/10646107/plib_clk.o.d" -o ${OBJECTDIR}/_ext/10646107/plib_clk.o ../src/config/pic32mz/peripheral/clk/plib_clk.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/809018751/plib_coretimer.o: ../src/config/pic32mz/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/pic32mz/c2092ef1e4c4201438667f275553dd6ef91d7482 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/809018751" 
	@${RM} ${OBJECTDIR}/_ext/809018751/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/809018751/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/809018751/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/809018751/plib_coretimer.o ../src/config/pic32mz/peripheral/coretimer/plib_coretimer.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330098546/plib_evic.o: ../src/config/pic32mz/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mz/1e33d785112bde754fee2d08a039e43e2923809f .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/330098546" 
	@${RM} ${OBJECTDIR}/_ext/330098546/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/330098546/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330098546/plib_evic.o.d" -o ${OBJECTDIR}/_ext/330098546/plib_evic.o ../src/config/pic32mz/peripheral/evic/plib_evic.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330152374/plib_gpio.o: ../src/config/pic32mz/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mz/fb1fd37d2174a2a9568293017ef431eee70abb31 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/330152374" 
	@${RM} ${OBJECTDIR}/_ext/330152374/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/330152374/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330152374/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/330152374/plib_gpio.o ../src/config/pic32mz/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o: ../src/config/pic32mz/peripheral/i2c/master/plib_i2c2_master.c  .generated_files/flags/pic32mz/76046b60236e331a18068b652c5730b518c653e9 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/249272802" 
	@${RM} ${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o.d" -o ${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o ../src/config/pic32mz/peripheral/i2c/master/plib_i2c2_master.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o: ../src/config/pic32mz/peripheral/i2c/master/plib_i2c4_master.c  .generated_files/flags/pic32mz/740c8ae74da56945a356f9f0f4da08aa3aa44ad0 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/249272802" 
	@${RM} ${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o.d" -o ${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o ../src/config/pic32mz/peripheral/i2c/master/plib_i2c4_master.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/867254719/plib_spi4_master.o: ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi4_master.c  .generated_files/flags/pic32mz/757ac56a12d8eecd5c6607c923232f420e29aa66 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/867254719" 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi4_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi4_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/867254719/plib_spi4_master.o.d" -o ${OBJECTDIR}/_ext/867254719/plib_spi4_master.o ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi4_master.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/867254719/plib_spi2_master.o: ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi2_master.c  .generated_files/flags/pic32mz/96a359a6a05bc6ff3028472a752d335d196e97d7 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/867254719" 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/867254719/plib_spi2_master.o.d" -o ${OBJECTDIR}/_ext/867254719/plib_spi2_master.o ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi2_master.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/867254719/plib_spi1_master.o: ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/pic32mz/28d0ff42cf89d07f38cac58289cc774f62486fd8 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/867254719" 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/867254719/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/867254719/plib_spi1_master.o ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/10662482/plib_tmr2.o: ../src/config/pic32mz/peripheral/tmr/plib_tmr2.c  .generated_files/flags/pic32mz/e3b09b6c41cf300667d46096c56c738e80991337 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/10662482" 
	@${RM} ${OBJECTDIR}/_ext/10662482/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/10662482/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/10662482/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/10662482/plib_tmr2.o ../src/config/pic32mz/peripheral/tmr/plib_tmr2.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart5.o: ../src/config/pic32mz/peripheral/uart/plib_uart5.c  .generated_files/flags/pic32mz/6224ca8b7b623e451815ec52f2422ea7e9f48b08 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart5.o ../src/config/pic32mz/peripheral/uart/plib_uart5.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart6.o: ../src/config/pic32mz/peripheral/uart/plib_uart6.c  .generated_files/flags/pic32mz/47f19ad7ef6a8e36590a3f9b98ea8db09f5a8e3a .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart6.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart6.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart6.o ../src/config/pic32mz/peripheral/uart/plib_uart6.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart3.o: ../src/config/pic32mz/peripheral/uart/plib_uart3.c  .generated_files/flags/pic32mz/142bf5f19ed9c936b4391b507321d9cf52ee8c65 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart3.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart3.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart3.o ../src/config/pic32mz/peripheral/uart/plib_uart3.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart4.o: ../src/config/pic32mz/peripheral/uart/plib_uart4.c  .generated_files/flags/pic32mz/8dfa933ad7682bd0ed30c7ee48ca6cf928819b7c .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart4.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart4.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart4.o ../src/config/pic32mz/peripheral/uart/plib_uart4.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart1.o: ../src/config/pic32mz/peripheral/uart/plib_uart1.c  .generated_files/flags/pic32mz/472340940478640114515eb8a23d555941e292a5 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart1.o ../src/config/pic32mz/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart2.o: ../src/config/pic32mz/peripheral/uart/plib_uart2.c  .generated_files/flags/pic32mz/97a80d7d12e45ffafd7105fda5eca55d17fdbdf1 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart2.o ../src/config/pic32mz/peripheral/uart/plib_uart2.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1991269565/xc32_monitor.o: ../src/config/pic32mz/stdio/xc32_monitor.c  .generated_files/flags/pic32mz/82a15491ea340035733997cbae78dc6894c9c90c .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1991269565" 
	@${RM} ${OBJECTDIR}/_ext/1991269565/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1991269565/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1991269565/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1991269565/xc32_monitor.o ../src/config/pic32mz/stdio/xc32_monitor.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1519118610/sys_cache.o: ../src/config/pic32mz/system/cache/sys_cache.c  .generated_files/flags/pic32mz/d6e5653a935f69cbc8ac4d4351422fc205765e08 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1519118610" 
	@${RM} ${OBJECTDIR}/_ext/1519118610/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1519118610/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1519118610/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1519118610/sys_cache.o ../src/config/pic32mz/system/cache/sys_cache.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1373644956/sys_dma.o: ../src/config/pic32mz/system/dma/sys_dma.c  .generated_files/flags/pic32mz/b907c1d4015b62e0e834642657c19c4f156fde74 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1373644956" 
	@${RM} ${OBJECTDIR}/_ext/1373644956/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/1373644956/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1373644956/sys_dma.o.d" -o ${OBJECTDIR}/_ext/1373644956/sys_dma.o ../src/config/pic32mz/system/dma/sys_dma.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1192657380/ff.o: ../src/config/pic32mz/system/fs/fat_fs/file_system/ff.c  .generated_files/flags/pic32mz/8862e162e67e3ae42e324775e6089d6dbf33660d .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1192657380" 
	@${RM} ${OBJECTDIR}/_ext/1192657380/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1192657380/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1192657380/ff.o.d" -o ${OBJECTDIR}/_ext/1192657380/ff.o ../src/config/pic32mz/system/fs/fat_fs/file_system/ff.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1192657380/ffunicode.o: ../src/config/pic32mz/system/fs/fat_fs/file_system/ffunicode.c  .generated_files/flags/pic32mz/8ac231e2911918519b389b51884e8e5ac1cbbe6 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1192657380" 
	@${RM} ${OBJECTDIR}/_ext/1192657380/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1192657380/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1192657380/ffunicode.o.d" -o ${OBJECTDIR}/_ext/1192657380/ffunicode.o ../src/config/pic32mz/system/fs/fat_fs/file_system/ffunicode.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/727274963/diskio.o: ../src/config/pic32mz/system/fs/fat_fs/hardware_access/diskio.c  .generated_files/flags/pic32mz/f5cb9322f79d6aacafb8e505c1df416bf5c06958 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/727274963" 
	@${RM} ${OBJECTDIR}/_ext/727274963/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/727274963/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/727274963/diskio.o.d" -o ${OBJECTDIR}/_ext/727274963/diskio.o ../src/config/pic32mz/system/fs/fat_fs/hardware_access/diskio.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/252936118/sys_fs.o: ../src/config/pic32mz/system/fs/src/sys_fs.c  .generated_files/flags/pic32mz/305efc2683de0e3bd483fcd9021f1c7803baf94e .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/252936118" 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/252936118/sys_fs.o.d" -o ${OBJECTDIR}/_ext/252936118/sys_fs.o ../src/config/pic32mz/system/fs/src/sys_fs.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o: ../src/config/pic32mz/system/fs/src/sys_fs_media_manager.c  .generated_files/flags/pic32mz/d70de6d11448f60eec93d1a72411c3cdd3cd4900 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/252936118" 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o ../src/config/pic32mz/system/fs/src/sys_fs_media_manager.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o: ../src/config/pic32mz/system/fs/src/sys_fs_fat_interface.c  .generated_files/flags/pic32mz/56d6cf27c25f35ef8bc417795fdb8d2835733dbe .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/252936118" 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o.d" -o ${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o ../src/config/pic32mz/system/fs/src/sys_fs_fat_interface.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1832149040/sys_int.o: ../src/config/pic32mz/system/int/src/sys_int.c  .generated_files/flags/pic32mz/3c257a1051f541147fe2c39de967411fc32aea02 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1832149040" 
	@${RM} ${OBJECTDIR}/_ext/1832149040/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832149040/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832149040/sys_int.o.d" -o ${OBJECTDIR}/_ext/1832149040/sys_int.o ../src/config/pic32mz/system/int/src/sys_int.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1636986698/sys_time.o: ../src/config/pic32mz/system/time/src/sys_time.c  .generated_files/flags/pic32mz/30486686f577fa1d88f1d467327731dc7d799e86 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1636986698" 
	@${RM} ${OBJECTDIR}/_ext/1636986698/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1636986698/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1636986698/sys_time.o.d" -o ${OBJECTDIR}/_ext/1636986698/sys_time.o ../src/config/pic32mz/system/time/src/sys_time.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/202551283/usb_device.o: ../src/config/pic32mz/usb/src/usb_device.c  .generated_files/flags/pic32mz/f26c11571de39143548119296c62fc838dc7b1c2 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/202551283" 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/202551283/usb_device.o.d" -o ${OBJECTDIR}/_ext/202551283/usb_device.o ../src/config/pic32mz/usb/src/usb_device.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/202551283/usb_device_cdc.o: ../src/config/pic32mz/usb/src/usb_device_cdc.c  .generated_files/flags/pic32mz/8126c7045f64dc0c03f7d8fb119606812e85fa46 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/202551283" 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/202551283/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/202551283/usb_device_cdc.o ../src/config/pic32mz/usb/src/usb_device_cdc.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o: ../src/config/pic32mz/usb/src/usb_device_cdc_acm.c  .generated_files/flags/pic32mz/36379981beab3d8dcf6d8dd9efcbbbc6e5e66d21 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/202551283" 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o ../src/config/pic32mz/usb/src/usb_device_cdc_acm.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/953055421/usb_device_init_data.o: ../src/config/pic32mz/usb_device_init_data.c  .generated_files/flags/pic32mz/8f90f8f4577f9ac936ac1e980b3f2f00ff920c5b .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/953055421" 
	@${RM} ${OBJECTDIR}/_ext/953055421/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/953055421/usb_device_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/953055421/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/953055421/usb_device_init_data.o ../src/config/pic32mz/usb_device_init_data.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/953055421/tasks.o: ../src/config/pic32mz/tasks.c  .generated_files/flags/pic32mz/e39639fdc9583f882d0a24ba91ffd47a0f190079 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/953055421" 
	@${RM} ${OBJECTDIR}/_ext/953055421/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/953055421/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/953055421/tasks.o.d" -o ${OBJECTDIR}/_ext/953055421/tasks.o ../src/config/pic32mz/tasks.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/953055421/initialization.o: ../src/config/pic32mz/initialization.c  .generated_files/flags/pic32mz/937b3c5104a82533c5441d0f7805351fe0d037d .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/953055421" 
	@${RM} ${OBJECTDIR}/_ext/953055421/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/953055421/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/953055421/initialization.o.d" -o ${OBJECTDIR}/_ext/953055421/initialization.o ../src/config/pic32mz/initialization.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/953055421/interrupts.o: ../src/config/pic32mz/interrupts.c  .generated_files/flags/pic32mz/1033c3b15d81b4d11e482383dd46c7ef1d16f222 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/953055421" 
	@${RM} ${OBJECTDIR}/_ext/953055421/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/953055421/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/953055421/interrupts.o.d" -o ${OBJECTDIR}/_ext/953055421/interrupts.o ../src/config/pic32mz/interrupts.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/953055421/exceptions.o: ../src/config/pic32mz/exceptions.c  .generated_files/flags/pic32mz/f7bda577a61446b310c23eec532b4aad137ffe3 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/953055421" 
	@${RM} ${OBJECTDIR}/_ext/953055421/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/953055421/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/953055421/exceptions.o.d" -o ${OBJECTDIR}/_ext/953055421/exceptions.o ../src/config/pic32mz/exceptions.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mz/ec76877be759936f3e11d0940d5bc26b1a55188e .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz/26c64b085990e2b36566209c06b2259a45ecf684 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/communication.o: ../src/communication.c  .generated_files/flags/pic32mz/e0a703b9b81ea48e9fe6363705e6992a149a7de9 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/communication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/communication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/communication.o.d" -o ${OBJECTDIR}/_ext/1360937237/communication.o ../src/communication.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/mdot.o: ../src/mdot.c  .generated_files/flags/pic32mz/795b28ba406ffbf5f0f1dc0732f61889427b1f79 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mdot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mdot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mdot.o.d" -o ${OBJECTDIR}/_ext/1360937237/mdot.o ../src/mdot.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/stringbuffer.o: ../src/stringbuffer.c  .generated_files/flags/pic32mz/b382b7f8e8b5d2abfba652c0861acc3ca21ea7d2 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/stringbuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/stringbuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/stringbuffer.o.d" -o ${OBJECTDIR}/_ext/1360937237/stringbuffer.o ../src/stringbuffer.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/757013429/drv_sdspi.o: ../src/config/pic32mz/driver/sdspi/src/drv_sdspi.c  .generated_files/flags/pic32mz/107fb289a3f31f91691ee7dae41f5e978b9cc579 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/757013429" 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi.o.d 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/757013429/drv_sdspi.o.d" -o ${OBJECTDIR}/_ext/757013429/drv_sdspi.o ../src/config/pic32mz/driver/sdspi/src/drv_sdspi.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o: ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_driver_interface.c  .generated_files/flags/pic32mz/8ec6bcd14590764832a8c1122745c0fd98c0062e .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/757013429" 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o.d" -o ${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_driver_interface.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o: ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_file_system.c  .generated_files/flags/pic32mz/f7c73180089a8789095e3d7183ae362060957ae0 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/757013429" 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o.d" -o ${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_file_system.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2120450970/drv_spi.o: ../src/config/pic32mz/driver/spi/src/drv_spi.c  .generated_files/flags/pic32mz/7240433862cfb4c96c392b74057215e4a83379ac .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2120450970" 
	@${RM} ${OBJECTDIR}/_ext/2120450970/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/2120450970/drv_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2120450970/drv_spi.o.d" -o ${OBJECTDIR}/_ext/2120450970/drv_spi.o ../src/config/pic32mz/driver/spi/src/drv_spi.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1783409726/drv_usbhs.o: ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs.c  .generated_files/flags/pic32mz/b224f8e05a1ddd449f913ab82fd1b0f0a58774f .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1783409726" 
	@${RM} ${OBJECTDIR}/_ext/1783409726/drv_usbhs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1783409726/drv_usbhs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1783409726/drv_usbhs.o.d" -o ${OBJECTDIR}/_ext/1783409726/drv_usbhs.o ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o: ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs_device.c  .generated_files/flags/pic32mz/119953f1f74af5371c05dae5047b708191de100d .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1783409726" 
	@${RM} ${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o.d" -o ${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs_device.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1640642171/plib_cache.o: ../src/config/pic32mz/peripheral/cache/plib_cache.c  .generated_files/flags/pic32mz/b81aeb02a48dc8bbffbcf5e2b73062bbe5548e04 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1640642171" 
	@${RM} ${OBJECTDIR}/_ext/1640642171/plib_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1640642171/plib_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1640642171/plib_cache.o.d" -o ${OBJECTDIR}/_ext/1640642171/plib_cache.o ../src/config/pic32mz/peripheral/cache/plib_cache.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/10646107/plib_clk.o: ../src/config/pic32mz/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mz/b4d679a1e204c80b6639fa76436838189d31a889 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/10646107" 
	@${RM} ${OBJECTDIR}/_ext/10646107/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/10646107/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/10646107/plib_clk.o.d" -o ${OBJECTDIR}/_ext/10646107/plib_clk.o ../src/config/pic32mz/peripheral/clk/plib_clk.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/809018751/plib_coretimer.o: ../src/config/pic32mz/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/pic32mz/c313eec72436d50a9ca6f50c4465607e747f9130 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/809018751" 
	@${RM} ${OBJECTDIR}/_ext/809018751/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/809018751/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/809018751/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/809018751/plib_coretimer.o ../src/config/pic32mz/peripheral/coretimer/plib_coretimer.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330098546/plib_evic.o: ../src/config/pic32mz/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mz/b1de15fe725c53b82b9d95fce93438c1b7b2f2a4 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/330098546" 
	@${RM} ${OBJECTDIR}/_ext/330098546/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/330098546/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330098546/plib_evic.o.d" -o ${OBJECTDIR}/_ext/330098546/plib_evic.o ../src/config/pic32mz/peripheral/evic/plib_evic.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330152374/plib_gpio.o: ../src/config/pic32mz/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mz/df526bbe5c40ef4bda3dc51387ac9ca6acaccced .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/330152374" 
	@${RM} ${OBJECTDIR}/_ext/330152374/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/330152374/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330152374/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/330152374/plib_gpio.o ../src/config/pic32mz/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o: ../src/config/pic32mz/peripheral/i2c/master/plib_i2c2_master.c  .generated_files/flags/pic32mz/d0fa5fbdb3f03b2f2bca5eff0b007886db1794cf .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/249272802" 
	@${RM} ${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o.d" -o ${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o ../src/config/pic32mz/peripheral/i2c/master/plib_i2c2_master.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o: ../src/config/pic32mz/peripheral/i2c/master/plib_i2c4_master.c  .generated_files/flags/pic32mz/17077b0dc9d24751ed2fe9fff62ccce053dd97b4 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/249272802" 
	@${RM} ${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o.d" -o ${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o ../src/config/pic32mz/peripheral/i2c/master/plib_i2c4_master.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/867254719/plib_spi4_master.o: ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi4_master.c  .generated_files/flags/pic32mz/af7cdbf783143e52e3a8ffa677a0d5f82f377d83 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/867254719" 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi4_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi4_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/867254719/plib_spi4_master.o.d" -o ${OBJECTDIR}/_ext/867254719/plib_spi4_master.o ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi4_master.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/867254719/plib_spi2_master.o: ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi2_master.c  .generated_files/flags/pic32mz/d64a7ed22e22a5816d587f5a8b077476e378d0e0 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/867254719" 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/867254719/plib_spi2_master.o.d" -o ${OBJECTDIR}/_ext/867254719/plib_spi2_master.o ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi2_master.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/867254719/plib_spi1_master.o: ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/pic32mz/40e76b652f3deb22dbb5892d97ec235360077341 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/867254719" 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/867254719/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/867254719/plib_spi1_master.o ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/10662482/plib_tmr2.o: ../src/config/pic32mz/peripheral/tmr/plib_tmr2.c  .generated_files/flags/pic32mz/a20619e7813d3272306eaa712bd75d3595deb8ad .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/10662482" 
	@${RM} ${OBJECTDIR}/_ext/10662482/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/10662482/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/10662482/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/10662482/plib_tmr2.o ../src/config/pic32mz/peripheral/tmr/plib_tmr2.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart5.o: ../src/config/pic32mz/peripheral/uart/plib_uart5.c  .generated_files/flags/pic32mz/cfa2ae9bd52195dfd70e170736d7480dfebe3a80 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart5.o ../src/config/pic32mz/peripheral/uart/plib_uart5.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart6.o: ../src/config/pic32mz/peripheral/uart/plib_uart6.c  .generated_files/flags/pic32mz/522f4749bfc48ee822fea8d3b85c47fb96716d40 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart6.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart6.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart6.o ../src/config/pic32mz/peripheral/uart/plib_uart6.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart3.o: ../src/config/pic32mz/peripheral/uart/plib_uart3.c  .generated_files/flags/pic32mz/d7208cab1bf28ef5cfa8e683bc180f0d7a30beda .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart3.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart3.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart3.o ../src/config/pic32mz/peripheral/uart/plib_uart3.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart4.o: ../src/config/pic32mz/peripheral/uart/plib_uart4.c  .generated_files/flags/pic32mz/af5e4148a2490fc7999f4ac14b0fdb830e9c616d .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart4.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart4.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart4.o ../src/config/pic32mz/peripheral/uart/plib_uart4.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart1.o: ../src/config/pic32mz/peripheral/uart/plib_uart1.c  .generated_files/flags/pic32mz/b5853c9da922f756d5568abdf3cf3f61f6ecbe0e .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart1.o ../src/config/pic32mz/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart2.o: ../src/config/pic32mz/peripheral/uart/plib_uart2.c  .generated_files/flags/pic32mz/45192dee24ee9caf66a093a16b6ab0f8867b12a8 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart2.o ../src/config/pic32mz/peripheral/uart/plib_uart2.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1991269565/xc32_monitor.o: ../src/config/pic32mz/stdio/xc32_monitor.c  .generated_files/flags/pic32mz/a992000c9f816a8282369ad70f5cddf6e9fb5e69 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1991269565" 
	@${RM} ${OBJECTDIR}/_ext/1991269565/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1991269565/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1991269565/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1991269565/xc32_monitor.o ../src/config/pic32mz/stdio/xc32_monitor.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1519118610/sys_cache.o: ../src/config/pic32mz/system/cache/sys_cache.c  .generated_files/flags/pic32mz/bf23de654b4ff82acd27d3903d3cc48abcb7ab38 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1519118610" 
	@${RM} ${OBJECTDIR}/_ext/1519118610/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1519118610/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1519118610/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1519118610/sys_cache.o ../src/config/pic32mz/system/cache/sys_cache.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1373644956/sys_dma.o: ../src/config/pic32mz/system/dma/sys_dma.c  .generated_files/flags/pic32mz/878b86abe8966846e9c63c83df84ec30558f8f43 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1373644956" 
	@${RM} ${OBJECTDIR}/_ext/1373644956/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/1373644956/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1373644956/sys_dma.o.d" -o ${OBJECTDIR}/_ext/1373644956/sys_dma.o ../src/config/pic32mz/system/dma/sys_dma.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1192657380/ff.o: ../src/config/pic32mz/system/fs/fat_fs/file_system/ff.c  .generated_files/flags/pic32mz/c6e824f02d43ac9c2140b6b8b4f3cd85ac7ac23e .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1192657380" 
	@${RM} ${OBJECTDIR}/_ext/1192657380/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1192657380/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1192657380/ff.o.d" -o ${OBJECTDIR}/_ext/1192657380/ff.o ../src/config/pic32mz/system/fs/fat_fs/file_system/ff.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1192657380/ffunicode.o: ../src/config/pic32mz/system/fs/fat_fs/file_system/ffunicode.c  .generated_files/flags/pic32mz/5a7ea46fcdd82d6927c264ffe8dab340b40abf89 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1192657380" 
	@${RM} ${OBJECTDIR}/_ext/1192657380/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1192657380/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1192657380/ffunicode.o.d" -o ${OBJECTDIR}/_ext/1192657380/ffunicode.o ../src/config/pic32mz/system/fs/fat_fs/file_system/ffunicode.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/727274963/diskio.o: ../src/config/pic32mz/system/fs/fat_fs/hardware_access/diskio.c  .generated_files/flags/pic32mz/b85e544bff7b577fb3390835f88e9efc433751fa .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/727274963" 
	@${RM} ${OBJECTDIR}/_ext/727274963/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/727274963/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/727274963/diskio.o.d" -o ${OBJECTDIR}/_ext/727274963/diskio.o ../src/config/pic32mz/system/fs/fat_fs/hardware_access/diskio.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/252936118/sys_fs.o: ../src/config/pic32mz/system/fs/src/sys_fs.c  .generated_files/flags/pic32mz/5c120eb5ada08536cd0fab572f1d07c5761cee56 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/252936118" 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/252936118/sys_fs.o.d" -o ${OBJECTDIR}/_ext/252936118/sys_fs.o ../src/config/pic32mz/system/fs/src/sys_fs.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o: ../src/config/pic32mz/system/fs/src/sys_fs_media_manager.c  .generated_files/flags/pic32mz/108dcd089cc2121c5a5771550834fa019dc357c2 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/252936118" 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o ../src/config/pic32mz/system/fs/src/sys_fs_media_manager.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o: ../src/config/pic32mz/system/fs/src/sys_fs_fat_interface.c  .generated_files/flags/pic32mz/9c6a029cbbc249a8e03daebfd9fd5f67f7e169f4 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/252936118" 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o.d" -o ${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o ../src/config/pic32mz/system/fs/src/sys_fs_fat_interface.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1832149040/sys_int.o: ../src/config/pic32mz/system/int/src/sys_int.c  .generated_files/flags/pic32mz/ec8e4e0db9e2e8a4afb655a5ebb8be57e845953e .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1832149040" 
	@${RM} ${OBJECTDIR}/_ext/1832149040/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832149040/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832149040/sys_int.o.d" -o ${OBJECTDIR}/_ext/1832149040/sys_int.o ../src/config/pic32mz/system/int/src/sys_int.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1636986698/sys_time.o: ../src/config/pic32mz/system/time/src/sys_time.c  .generated_files/flags/pic32mz/5c44a9329de4f03f6e524ea16466c19fa6a0f95b .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1636986698" 
	@${RM} ${OBJECTDIR}/_ext/1636986698/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1636986698/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1636986698/sys_time.o.d" -o ${OBJECTDIR}/_ext/1636986698/sys_time.o ../src/config/pic32mz/system/time/src/sys_time.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/202551283/usb_device.o: ../src/config/pic32mz/usb/src/usb_device.c  .generated_files/flags/pic32mz/b360c8f236e4b1eed76a1129e426686655bee3f9 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/202551283" 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/202551283/usb_device.o.d" -o ${OBJECTDIR}/_ext/202551283/usb_device.o ../src/config/pic32mz/usb/src/usb_device.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/202551283/usb_device_cdc.o: ../src/config/pic32mz/usb/src/usb_device_cdc.c  .generated_files/flags/pic32mz/a12751dae1ff14fc1e5ad4361205d001f2bc730f .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/202551283" 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/202551283/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/202551283/usb_device_cdc.o ../src/config/pic32mz/usb/src/usb_device_cdc.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o: ../src/config/pic32mz/usb/src/usb_device_cdc_acm.c  .generated_files/flags/pic32mz/7f6c0000cf269eef9037f6a8fb9d6a184413756b .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/202551283" 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o ../src/config/pic32mz/usb/src/usb_device_cdc_acm.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/953055421/usb_device_init_data.o: ../src/config/pic32mz/usb_device_init_data.c  .generated_files/flags/pic32mz/a6f0edaa45b02f1397ed11bfc650af0ade0094b9 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/953055421" 
	@${RM} ${OBJECTDIR}/_ext/953055421/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/953055421/usb_device_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/953055421/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/953055421/usb_device_init_data.o ../src/config/pic32mz/usb_device_init_data.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/953055421/tasks.o: ../src/config/pic32mz/tasks.c  .generated_files/flags/pic32mz/1e620f97bd8a544ff25e7bfd72dd2cfdf64d9e4a .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/953055421" 
	@${RM} ${OBJECTDIR}/_ext/953055421/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/953055421/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/953055421/tasks.o.d" -o ${OBJECTDIR}/_ext/953055421/tasks.o ../src/config/pic32mz/tasks.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/953055421/initialization.o: ../src/config/pic32mz/initialization.c  .generated_files/flags/pic32mz/7404827b2256ed2f9555f3c3274c6b960cd77c1e .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/953055421" 
	@${RM} ${OBJECTDIR}/_ext/953055421/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/953055421/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/953055421/initialization.o.d" -o ${OBJECTDIR}/_ext/953055421/initialization.o ../src/config/pic32mz/initialization.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/953055421/interrupts.o: ../src/config/pic32mz/interrupts.c  .generated_files/flags/pic32mz/bfc2826ba7e23c510d9e34935994f6228345bc9a .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/953055421" 
	@${RM} ${OBJECTDIR}/_ext/953055421/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/953055421/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/953055421/interrupts.o.d" -o ${OBJECTDIR}/_ext/953055421/interrupts.o ../src/config/pic32mz/interrupts.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/953055421/exceptions.o: ../src/config/pic32mz/exceptions.c  .generated_files/flags/pic32mz/213ffa64cbe9059e9723fb68232836d991dd086b .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/953055421" 
	@${RM} ${OBJECTDIR}/_ext/953055421/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/953055421/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/953055421/exceptions.o.d" -o ${OBJECTDIR}/_ext/953055421/exceptions.o ../src/config/pic32mz/exceptions.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mz/d271afff5d1187046a4c1277ee17f4c6987e5eee .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz/c64e9f13887b0bd970dc06893b182ee57f13fb6 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/communication.o: ../src/communication.c  .generated_files/flags/pic32mz/3131b217f1b369343c6a94b61fe6553239a31262 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/communication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/communication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/communication.o.d" -o ${OBJECTDIR}/_ext/1360937237/communication.o ../src/communication.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/mdot.o: ../src/mdot.c  .generated_files/flags/pic32mz/6812a021fb50b2e2e2c281f2625b5315311932c6 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mdot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mdot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mdot.o.d" -o ${OBJECTDIR}/_ext/1360937237/mdot.o ../src/mdot.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/stringbuffer.o: ../src/stringbuffer.c  .generated_files/flags/pic32mz/a211a19919931a04c88b6accbcf4d636c5496417 .generated_files/flags/pic32mz/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/stringbuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/stringbuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/stringbuffer.o.d" -o ${OBJECTDIR}/_ext/1360937237/stringbuffer.o ../src/stringbuffer.c    -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_ICD4=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/GHG_App_V1.0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_ICD4=1,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/GHG_App_V1.0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/pic32mz/p32MZ2048EFG144.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/GHG_App_V1.0.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
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
