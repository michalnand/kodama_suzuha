CXX_SRCS = $(shell find  -name 'main.cpp')
CXX_SRCS+= $(shell find  ./usr -name '*.cpp')

CXX_SRCS+= $(shell find  ./kodama/controll -name '*.cpp')
CXX_SRCS+= $(shell find  ./kodama/drivers -name '*.cpp')

CXX_SRCS+= $(shell find  ./kodama/devices/aeris -name '*.cpp')
C_SRCS = $(shell find  ./kodama/devices/aeris -name '*.c')


INC = -I .
INC+= -I ./usr

INC+= -I ./kodama/
INC+= -I ./kodama/controll
INC+= -I ./kodama/drivers

INC+= -I ./kodama/devices/aeris



TARGET = -mcpu=cortex-m4 -mthumb  -mfpu=fpv4-sp-d16 -mfloat-abi=hard -fsingle-precision-constant



GCCPREFIX=arm-none-eabi-
LDSCRIPT = ./kodama/devices/aeris/ldscript.ld

ELF = bin/main.elf

CC = $(GCCPREFIX)gcc
CXX = $(GCCPREFIX)g++
LD = $(GCCPREFIX)g++
OBJCOPY = $(GCCPREFIX)objcopy
OBJDUMP = $(GCCPREFIX)objdump
SIZE = $(GCCPREFIX)size


CCFLAGS = -c -O2 -Os -s -Wall -Wextra -pedantic -std=c99
CCFLAGS+= -Wshadow -Wpointer-arith -Wcast-qual -Wcast-align
CCFLAGS+= $(TARGET) -fdata-sections -ffunction-sections -nostdlib


CXXFLAGS = -c -O2 -Os -s -Wall -Wextra -pedantic -std=c++11  -fno-rtti -fno-exceptions $(INC)
CXXFLAGS+= -Wshadow -Wpointer-arith -Wcast-qual -Wcast-align
CXXFLAGS+= $(TARGET) -fdata-sections -ffunction-sections # -nostdlib

LDFLAGS = -T$(LDSCRIPT) $(TARGET) -mthumb -Wl,--gc-sections --specs=nosys.specs #-nostdlib


C_OBJS = $(C_SRCS:.c=.o)
CXX_OBJS = $(CXX_SRCS:.cpp=.o)


all: $(ELF)
	$(OBJDUMP) --disassemble -D -z $< > bin/main.asm
	$(OBJCOPY) -O ihex $< bin/main.hex
	$(OBJCOPY) -O binary $< bin/main.bin
	$(SIZE) $(ELF)

$(ELF): $(C_OBJS) $(CXX_OBJS)
	$(LD) $(LDFLAGS) -o $@ $(C_OBJS) $(CXX_OBJS)

%.o: %.c
	$(CC) $(CCFLAGS) $< -o $@

%.o: %.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

CLEAN_FILES = $(shell find -name '*.o')
CLEAN_FILES+= bin/main*
clean:
	rm $(CLEAN_FILES) -rf
