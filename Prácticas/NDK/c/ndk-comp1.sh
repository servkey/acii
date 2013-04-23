#!/bin/sh 
#OS='windows'
#ANDROIDSDK='android-8'
#PROGDIR=`dirname $0`
#PROGDIR=`pwd`
#echo $PROGDIR
# PATH=/cygdrive/c/developer/android-ndk-r8d/toolchains/arm-linux-androideabi-4.4.3/prebuilt/windows/bin/:$PATH
# mount -o remount,rw -t vfat /dev/block//vold/179:0 /sdcard
#ARMEABIGCC=$PROGDIR/toolchains/arm-linux-androideabi-4.7/prebuilt/windows/bin/arm-linux-androideabi-gcc
#ARMEABILIB=$PROGDIR/platforms/$ANDROIDSDK/arch-arm/usr/lib
#ARMEABIINC=$PROGDIR/platforms/$ANDROIDSDK/arch-arm/usr/include
#ARMEABICRT=$PROGDIR/platforms/$ANDROIDSDK/arch-arm/usr/lib/crtbegin_dynamic.o
#LINKER=/system/bin/linker
PATH=/cygdrive/c/developer/android-ndk-r8d/toolchains/arm-linux-androideabi-4.4.3/prebuilt/windows/bin/:$PATH
echo "GCC:"$ARMEABIGCC "LIB:"$ARMEABILIB "LINKER":$LINKER "PARAMS:"$@
#`arm-linux-androideabi-gcc -o hola hola.c #-Wl, -rpath-link=$ARMEABILIB, -dynamic-linker=$LINKER -L$ARMEABILIB $ARMEABICRT -I$ARMEABIINC -nostdlib -lc`
`arm-linux-androideabi-gcc -o hola2 hola2.c `