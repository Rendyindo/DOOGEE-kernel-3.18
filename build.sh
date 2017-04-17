#!/bin/bash
mkdir -p out
export CROSS_COMPILE=~/linaro48/bin/arm-eabi-
#export USE_CCACHE=1
export ARCH=arm ARCH_MTK_PLATFORM=mt6580
#make clean
#make mrproper
make -C $PWD O=$PWD/out ARCH=arm v3750_defconfig
make -j2 -C $PWD O=$PWD/out ARCH=arm
