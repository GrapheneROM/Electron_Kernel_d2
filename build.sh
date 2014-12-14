#!/bin/bash
# Copyright (C) Joe Maples 2014

export NOW=$(date +"%m%d%Y")

make clean && make mrproper && make electron_defconfig && make prepare && rm -rf include/generated/utsrelease.h && echo "#define UTS_RELEASE "3.17.105-electron-$NOW"" > include/generated/utsrelease.h && make -j9
