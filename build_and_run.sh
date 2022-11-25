#!/bin/sh
#
# Needs rustyc and gcc-avr/avr-lib, avrdude to compile and run
COMPILER="./rustyc" # Assuming rustyc is in the local dir
CC=avr-gcc # Link with avr
OBJCOPY=avr-objcopy
TARGET=avr-unknown-gnu-atmega238
PACKAGER=avrdude
DEVICE=/dev/ttyACM0

#Run the build
${COMPILER} build --target=${TARGET} --linker=${CC}

cd build/${TARGET}/ && ${PACKAGER} -p atmega328p -c arduino -U flash:w:main.hex:i -F -P ${DEVICE}

