cmd_/root/openvswitch-1.4.2/datapath/linux/kmemdup.o := gcc -Wp,-MD,/root/openvswitch-1.4.2/datapath/linux/.kmemdup.o.d  -nostdinc -isystem /usr/lib/gcc/arm-linux-gnueabi/4.3.2/include -I/root/openvswitch-1.4.2/include -I/root/openvswitch-1.4.2/datapath/linux/compat -I/root/openvswitch-1.4.2/datapath/linux/compat/include -I/root/linux-3.1/arch/arm/include -Iarch/arm/include/generated -Iinclude  -include /root/linux-3.1/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -Iarch/arm/mach-kirkwood/include -Iarch/arm/plat-orion/include -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -Os -marm -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables -D__LINUX_ARM_ARCH__=5 -march=armv5te -mtune=xscale -msoft-float -Uarm -fno-stack-protector -fomit-frame-pointer -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -DVERSION=\"1.4.2\" -I/root/openvswitch-1.4.2/datapath/linux/.. -I/root/openvswitch-1.4.2/datapath/linux/.. -DBUILDNR=\"\" -g -include /root/openvswitch-1.4.2/datapath/linux/kcompat.h  -DMODULE  -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(kmemdup)"  -D"KBUILD_MODNAME=KBUILD_STR(openvswitch_mod)" -c -o /root/openvswitch-1.4.2/datapath/linux/kmemdup.o /root/openvswitch-1.4.2/datapath/linux/kmemdup.c

source_/root/openvswitch-1.4.2/datapath/linux/kmemdup.o := /root/openvswitch-1.4.2/datapath/linux/kmemdup.c

deps_/root/openvswitch-1.4.2/datapath/linux/kmemdup.o := \
  /root/linux-3.1/include/linux/kconfig.h \
    $(wildcard include/config/h.h) \
    $(wildcard include/config/.h) \
    $(wildcard include/config/foo.h) \
  /root/openvswitch-1.4.2/datapath/linux/kcompat.h \

/root/openvswitch-1.4.2/datapath/linux/kmemdup.o: $(deps_/root/openvswitch-1.4.2/datapath/linux/kmemdup.o)

$(deps_/root/openvswitch-1.4.2/datapath/linux/kmemdup.o):
