CXX_SRCS = $(shell find  -name '*.cpp')

INC = -I ./device/interfaces
INC+= -I ./device/atmega_328
INC+= -I ./common

TARGET = -mmcu=atmega32



GCCPREFIX=avr-

ELF = bin/main.elf

CXX = $(GCCPREFIX)g++
LD = $(GCCPREFIX)g++
OBJCOPY = $(GCCPREFIX)objcopy
OBJDUMP = $(GCCPREFIX)objdump
SIZE = $(GCCPREFIX)size

CXXFLAGS = -c -O2 -Os -Wall -Wextra -pedantic -std=c++11 -fno-rtti -fno-exceptions $(INC) -g $(TARGET) -fdata-sections -ffunction-sections

LDFLAGS = $(TARGET) -Wl,--gc-sections



CXX_OBJS = $(CXX_SRCS:.cpp=.o)

all: $(ELF)
	$(OBJDUMP) --disassemble $< > bin/main.asm
	$(OBJCOPY) -O ihex $< bin/main.hex
	$(OBJCOPY) -O binary $< bin/main.bin
	$(SIZE) $(ELF)

$(ELF): $(CXX_OBJS)
	$(LD) $(LDFLAGS) -o $@ $(CXX_OBJS) $(OBJS)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

CLEAN_FILES = $(shell find -name '*.o')
CLEAN_FILES+= bin/main*
clean:
	rm $(CLEAN_FILES) -rf
	#rm device/device.h
	#rm Makefile
