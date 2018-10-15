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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/module_touch_capacitive.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/module_touch_capacitive.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=--mafrlcsj
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
SOURCEFILES_QUOTED_IF_SPACED=includes/configtouch/myConfigTouch.c includes/deviceconfig/device_config.c includes/I2C/I2CDevice.c includes/mtouch/mTouchAcquistion.c includes/mtouch/mTouchButton.c includes/mtouch/mTouchControl.c includes/mtouch/mTouchSensor.c includes/pinconfig/pin_manager.c includes/timer/tmr2.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/includes/configtouch/myConfigTouch.p1 ${OBJECTDIR}/includes/deviceconfig/device_config.p1 ${OBJECTDIR}/includes/I2C/I2CDevice.p1 ${OBJECTDIR}/includes/mtouch/mTouchAcquistion.p1 ${OBJECTDIR}/includes/mtouch/mTouchButton.p1 ${OBJECTDIR}/includes/mtouch/mTouchControl.p1 ${OBJECTDIR}/includes/mtouch/mTouchSensor.p1 ${OBJECTDIR}/includes/pinconfig/pin_manager.p1 ${OBJECTDIR}/includes/timer/tmr2.p1 ${OBJECTDIR}/main.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/includes/configtouch/myConfigTouch.p1.d ${OBJECTDIR}/includes/deviceconfig/device_config.p1.d ${OBJECTDIR}/includes/I2C/I2CDevice.p1.d ${OBJECTDIR}/includes/mtouch/mTouchAcquistion.p1.d ${OBJECTDIR}/includes/mtouch/mTouchButton.p1.d ${OBJECTDIR}/includes/mtouch/mTouchControl.p1.d ${OBJECTDIR}/includes/mtouch/mTouchSensor.p1.d ${OBJECTDIR}/includes/pinconfig/pin_manager.p1.d ${OBJECTDIR}/includes/timer/tmr2.p1.d ${OBJECTDIR}/main.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/includes/configtouch/myConfigTouch.p1 ${OBJECTDIR}/includes/deviceconfig/device_config.p1 ${OBJECTDIR}/includes/I2C/I2CDevice.p1 ${OBJECTDIR}/includes/mtouch/mTouchAcquistion.p1 ${OBJECTDIR}/includes/mtouch/mTouchButton.p1 ${OBJECTDIR}/includes/mtouch/mTouchControl.p1 ${OBJECTDIR}/includes/mtouch/mTouchSensor.p1 ${OBJECTDIR}/includes/pinconfig/pin_manager.p1 ${OBJECTDIR}/includes/timer/tmr2.p1 ${OBJECTDIR}/main.p1

# Source Files
SOURCEFILES=includes/configtouch/myConfigTouch.c includes/deviceconfig/device_config.c includes/I2C/I2CDevice.c includes/mtouch/mTouchAcquistion.c includes/mtouch/mTouchButton.c includes/mtouch/mTouchControl.c includes/mtouch/mTouchSensor.c includes/pinconfig/pin_manager.c includes/timer/tmr2.c main.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/module_touch_capacitive.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F46K22
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/includes/configtouch/myConfigTouch.p1: includes/configtouch/myConfigTouch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/includes/configtouch" 
	@${RM} ${OBJECTDIR}/includes/configtouch/myConfigTouch.p1.d 
	@${RM} ${OBJECTDIR}/includes/configtouch/myConfigTouch.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=free -D_XTAL_FREQ=64000000 -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/legacy" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/legacy" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/includes/configtouch/myConfigTouch.p1 includes/configtouch/myConfigTouch.c 
	@-${MV} ${OBJECTDIR}/includes/configtouch/myConfigTouch.d ${OBJECTDIR}/includes/configtouch/myConfigTouch.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/includes/configtouch/myConfigTouch.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/includes/deviceconfig/device_config.p1: includes/deviceconfig/device_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/includes/deviceconfig" 
	@${RM} ${OBJECTDIR}/includes/deviceconfig/device_config.p1.d 
	@${RM} ${OBJECTDIR}/includes/deviceconfig/device_config.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=free -D_XTAL_FREQ=64000000 -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/legacy" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/legacy" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/includes/deviceconfig/device_config.p1 includes/deviceconfig/device_config.c 
	@-${MV} ${OBJECTDIR}/includes/deviceconfig/device_config.d ${OBJECTDIR}/includes/deviceconfig/device_config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/includes/deviceconfig/device_config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/includes/I2C/I2CDevice.p1: includes/I2C/I2CDevice.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/includes/I2C" 
	@${RM} ${OBJECTDIR}/includes/I2C/I2CDevice.p1.d 
	@${RM} ${OBJECTDIR}/includes/I2C/I2CDevice.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=free -D_XTAL_FREQ=64000000 -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/legacy" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/legacy" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/includes/I2C/I2CDevice.p1 includes/I2C/I2CDevice.c 
	@-${MV} ${OBJECTDIR}/includes/I2C/I2CDevice.d ${OBJECTDIR}/includes/I2C/I2CDevice.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/includes/I2C/I2CDevice.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/includes/mtouch/mTouchAcquistion.p1: includes/mtouch/mTouchAcquistion.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/includes/mtouch" 
	@${RM} ${OBJECTDIR}/includes/mtouch/mTouchAcquistion.p1.d 
	@${RM} ${OBJECTDIR}/includes/mtouch/mTouchAcquistion.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=free -D_XTAL_FREQ=64000000 -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/legacy" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/legacy" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/includes/mtouch/mTouchAcquistion.p1 includes/mtouch/mTouchAcquistion.c 
	@-${MV} ${OBJECTDIR}/includes/mtouch/mTouchAcquistion.d ${OBJECTDIR}/includes/mtouch/mTouchAcquistion.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/includes/mtouch/mTouchAcquistion.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/includes/mtouch/mTouchButton.p1: includes/mtouch/mTouchButton.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/includes/mtouch" 
	@${RM} ${OBJECTDIR}/includes/mtouch/mTouchButton.p1.d 
	@${RM} ${OBJECTDIR}/includes/mtouch/mTouchButton.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=free -D_XTAL_FREQ=64000000 -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/legacy" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/legacy" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/includes/mtouch/mTouchButton.p1 includes/mtouch/mTouchButton.c 
	@-${MV} ${OBJECTDIR}/includes/mtouch/mTouchButton.d ${OBJECTDIR}/includes/mtouch/mTouchButton.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/includes/mtouch/mTouchButton.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/includes/mtouch/mTouchControl.p1: includes/mtouch/mTouchControl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/includes/mtouch" 
	@${RM} ${OBJECTDIR}/includes/mtouch/mTouchControl.p1.d 
	@${RM} ${OBJECTDIR}/includes/mtouch/mTouchControl.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=free -D_XTAL_FREQ=64000000 -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/legacy" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/legacy" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/includes/mtouch/mTouchControl.p1 includes/mtouch/mTouchControl.c 
	@-${MV} ${OBJECTDIR}/includes/mtouch/mTouchControl.d ${OBJECTDIR}/includes/mtouch/mTouchControl.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/includes/mtouch/mTouchControl.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/includes/mtouch/mTouchSensor.p1: includes/mtouch/mTouchSensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/includes/mtouch" 
	@${RM} ${OBJECTDIR}/includes/mtouch/mTouchSensor.p1.d 
	@${RM} ${OBJECTDIR}/includes/mtouch/mTouchSensor.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=free -D_XTAL_FREQ=64000000 -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/legacy" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/legacy" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/includes/mtouch/mTouchSensor.p1 includes/mtouch/mTouchSensor.c 
	@-${MV} ${OBJECTDIR}/includes/mtouch/mTouchSensor.d ${OBJECTDIR}/includes/mtouch/mTouchSensor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/includes/mtouch/mTouchSensor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/includes/pinconfig/pin_manager.p1: includes/pinconfig/pin_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/includes/pinconfig" 
	@${RM} ${OBJECTDIR}/includes/pinconfig/pin_manager.p1.d 
	@${RM} ${OBJECTDIR}/includes/pinconfig/pin_manager.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=free -D_XTAL_FREQ=64000000 -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/legacy" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/legacy" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/includes/pinconfig/pin_manager.p1 includes/pinconfig/pin_manager.c 
	@-${MV} ${OBJECTDIR}/includes/pinconfig/pin_manager.d ${OBJECTDIR}/includes/pinconfig/pin_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/includes/pinconfig/pin_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/includes/timer/tmr2.p1: includes/timer/tmr2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/includes/timer" 
	@${RM} ${OBJECTDIR}/includes/timer/tmr2.p1.d 
	@${RM} ${OBJECTDIR}/includes/timer/tmr2.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=free -D_XTAL_FREQ=64000000 -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/legacy" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/legacy" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/includes/timer/tmr2.p1 includes/timer/tmr2.c 
	@-${MV} ${OBJECTDIR}/includes/timer/tmr2.d ${OBJECTDIR}/includes/timer/tmr2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/includes/timer/tmr2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=free -D_XTAL_FREQ=64000000 -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/legacy" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/legacy" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/includes/configtouch/myConfigTouch.p1: includes/configtouch/myConfigTouch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/includes/configtouch" 
	@${RM} ${OBJECTDIR}/includes/configtouch/myConfigTouch.p1.d 
	@${RM} ${OBJECTDIR}/includes/configtouch/myConfigTouch.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=free -D_XTAL_FREQ=64000000 -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/legacy" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/legacy" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/includes/configtouch/myConfigTouch.p1 includes/configtouch/myConfigTouch.c 
	@-${MV} ${OBJECTDIR}/includes/configtouch/myConfigTouch.d ${OBJECTDIR}/includes/configtouch/myConfigTouch.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/includes/configtouch/myConfigTouch.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/includes/deviceconfig/device_config.p1: includes/deviceconfig/device_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/includes/deviceconfig" 
	@${RM} ${OBJECTDIR}/includes/deviceconfig/device_config.p1.d 
	@${RM} ${OBJECTDIR}/includes/deviceconfig/device_config.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=free -D_XTAL_FREQ=64000000 -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/legacy" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/legacy" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/includes/deviceconfig/device_config.p1 includes/deviceconfig/device_config.c 
	@-${MV} ${OBJECTDIR}/includes/deviceconfig/device_config.d ${OBJECTDIR}/includes/deviceconfig/device_config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/includes/deviceconfig/device_config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/includes/I2C/I2CDevice.p1: includes/I2C/I2CDevice.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/includes/I2C" 
	@${RM} ${OBJECTDIR}/includes/I2C/I2CDevice.p1.d 
	@${RM} ${OBJECTDIR}/includes/I2C/I2CDevice.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=free -D_XTAL_FREQ=64000000 -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/legacy" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/legacy" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/includes/I2C/I2CDevice.p1 includes/I2C/I2CDevice.c 
	@-${MV} ${OBJECTDIR}/includes/I2C/I2CDevice.d ${OBJECTDIR}/includes/I2C/I2CDevice.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/includes/I2C/I2CDevice.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/includes/mtouch/mTouchAcquistion.p1: includes/mtouch/mTouchAcquistion.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/includes/mtouch" 
	@${RM} ${OBJECTDIR}/includes/mtouch/mTouchAcquistion.p1.d 
	@${RM} ${OBJECTDIR}/includes/mtouch/mTouchAcquistion.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=free -D_XTAL_FREQ=64000000 -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/legacy" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/legacy" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/includes/mtouch/mTouchAcquistion.p1 includes/mtouch/mTouchAcquistion.c 
	@-${MV} ${OBJECTDIR}/includes/mtouch/mTouchAcquistion.d ${OBJECTDIR}/includes/mtouch/mTouchAcquistion.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/includes/mtouch/mTouchAcquistion.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/includes/mtouch/mTouchButton.p1: includes/mtouch/mTouchButton.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/includes/mtouch" 
	@${RM} ${OBJECTDIR}/includes/mtouch/mTouchButton.p1.d 
	@${RM} ${OBJECTDIR}/includes/mtouch/mTouchButton.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=free -D_XTAL_FREQ=64000000 -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/legacy" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/legacy" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/includes/mtouch/mTouchButton.p1 includes/mtouch/mTouchButton.c 
	@-${MV} ${OBJECTDIR}/includes/mtouch/mTouchButton.d ${OBJECTDIR}/includes/mtouch/mTouchButton.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/includes/mtouch/mTouchButton.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/includes/mtouch/mTouchControl.p1: includes/mtouch/mTouchControl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/includes/mtouch" 
	@${RM} ${OBJECTDIR}/includes/mtouch/mTouchControl.p1.d 
	@${RM} ${OBJECTDIR}/includes/mtouch/mTouchControl.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=free -D_XTAL_FREQ=64000000 -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/legacy" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/legacy" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/includes/mtouch/mTouchControl.p1 includes/mtouch/mTouchControl.c 
	@-${MV} ${OBJECTDIR}/includes/mtouch/mTouchControl.d ${OBJECTDIR}/includes/mtouch/mTouchControl.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/includes/mtouch/mTouchControl.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/includes/mtouch/mTouchSensor.p1: includes/mtouch/mTouchSensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/includes/mtouch" 
	@${RM} ${OBJECTDIR}/includes/mtouch/mTouchSensor.p1.d 
	@${RM} ${OBJECTDIR}/includes/mtouch/mTouchSensor.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=free -D_XTAL_FREQ=64000000 -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/legacy" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/legacy" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/includes/mtouch/mTouchSensor.p1 includes/mtouch/mTouchSensor.c 
	@-${MV} ${OBJECTDIR}/includes/mtouch/mTouchSensor.d ${OBJECTDIR}/includes/mtouch/mTouchSensor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/includes/mtouch/mTouchSensor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/includes/pinconfig/pin_manager.p1: includes/pinconfig/pin_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/includes/pinconfig" 
	@${RM} ${OBJECTDIR}/includes/pinconfig/pin_manager.p1.d 
	@${RM} ${OBJECTDIR}/includes/pinconfig/pin_manager.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=free -D_XTAL_FREQ=64000000 -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/legacy" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/legacy" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/includes/pinconfig/pin_manager.p1 includes/pinconfig/pin_manager.c 
	@-${MV} ${OBJECTDIR}/includes/pinconfig/pin_manager.d ${OBJECTDIR}/includes/pinconfig/pin_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/includes/pinconfig/pin_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/includes/timer/tmr2.p1: includes/timer/tmr2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/includes/timer" 
	@${RM} ${OBJECTDIR}/includes/timer/tmr2.p1.d 
	@${RM} ${OBJECTDIR}/includes/timer/tmr2.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=free -D_XTAL_FREQ=64000000 -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/legacy" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/legacy" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/includes/timer/tmr2.p1 includes/timer/tmr2.c 
	@-${MV} ${OBJECTDIR}/includes/timer/tmr2.d ${OBJECTDIR}/includes/timer/tmr2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/includes/timer/tmr2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=free -D_XTAL_FREQ=64000000 -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/legacy" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/legacy" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/module_touch_capacitive.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/module_touch_capacitive.X.${IMAGE_TYPE}.map  -D__DEBUG=1  --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=free -D_XTAL_FREQ=64000000 -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/legacy" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/legacy" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"        $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/module_touch_capacitive.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_default=$(CND_CONF) 
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/module_touch_capacitive.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/module_touch_capacitive.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/module_touch_capacitive.X.${IMAGE_TYPE}.map  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=free -D_XTAL_FREQ=64000000 -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.32/include/legacy" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/plib" -I"C:/Program Files (x86)/Microchip/xc8/v1.33/include/legacy" --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/module_touch_capacitive.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_default=$(CND_CONF) 
	
	@echo Normalizing hex file
	@"C:/Program Files (x86)/Microchip/MPLABX/v4.20/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files (x86)/Microchip/MPLABX/v4.20/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" dist/${CND_CONF}/${IMAGE_TYPE}/module_touch_capacitive.X.${IMAGE_TYPE}.hex -odist/${CND_CONF}/${IMAGE_TYPE}/module_touch_capacitive.X.${IMAGE_TYPE}.hex

endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
