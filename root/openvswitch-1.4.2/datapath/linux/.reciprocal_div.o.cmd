cmd_/root/openvswitch-1.4.2/datapath/linux/reciprocal_div.o := gcc -Wp,-MD,/root/openvswitch-1.4.2/datapath/linux/.reciprocal_div.o.d  -nostdinc -isystem /usr/lib/gcc/arm-linux-gnueabi/4.3.2/include -I/root/openvswitch-1.4.2/include -I/root/openvswitch-1.4.2/datapath/linux/compat -I/root/openvswitch-1.4.2/datapath/linux/compat/include -I/root/linux-3.1/arch/arm/include -Iarch/arm/include/generated -Iinclude  -include /root/linux-3.1/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -Iarch/arm/mach-kirkwood/include -Iarch/arm/plat-orion/include -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -Os -marm -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables -D__LINUX_ARM_ARCH__=5 -march=armv5te -mtune=xscale -msoft-float -Uarm -fno-stack-protector -fomit-frame-pointer -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -DVERSION=\"1.4.2\" -I/root/openvswitch-1.4.2/datapath/linux/.. -I/root/openvswitch-1.4.2/datapath/linux/.. -DBUILDNR=\"\" -g -include /root/openvswitch-1.4.2/datapath/linux/kcompat.h  -DMODULE  -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(reciprocal_div)"  -D"KBUILD_MODNAME=KBUILD_STR(openvswitch_mod)" -c -o /root/openvswitch-1.4.2/datapath/linux/reciprocal_div.o /root/openvswitch-1.4.2/datapath/linux/reciprocal_div.c

source_/root/openvswitch-1.4.2/datapath/linux/reciprocal_div.o := /root/openvswitch-1.4.2/datapath/linux/reciprocal_div.c

deps_/root/openvswitch-1.4.2/datapath/linux/reciprocal_div.o := \
  /root/linux-3.1/include/linux/kconfig.h \
    $(wildcard include/config/h.h) \
    $(wildcard include/config/.h) \
    $(wildcard include/config/foo.h) \
  /root/openvswitch-1.4.2/datapath/linux/kcompat.h \
  /root/linux-3.1/arch/arm/include/asm/div64.h \
  /root/linux-3.1/arch/arm/include/asm/system.h \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/cpu/32v6k.h) \
    $(wildcard include/config/cpu/xsc3.h) \
    $(wildcard include/config/cpu/fa526.h) \
    $(wildcard include/config/arch/has/barriers.h) \
    $(wildcard include/config/arm/dma/mem/bufferable.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/cpu/sa1100.h) \
    $(wildcard include/config/cpu/sa110.h) \
    $(wildcard include/config/cpu/v6.h) \
  include/linux/linkage.h \
  /root/openvswitch-1.4.2/datapath/linux/compat/include/linux/compiler.h \
  include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  /root/openvswitch-1.4.2/datapath/linux/compat/include/linux/compiler-gcc.h \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  include/linux/compiler-gcc4.h \
  /root/linux-3.1/arch/arm/include/asm/linkage.h \
  include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  include/linux/typecheck.h \
  /root/linux-3.1/arch/arm/include/asm/irqflags.h \
  /root/linux-3.1/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
    $(wildcard include/config/arm/thumb.h) \
  /root/linux-3.1/arch/arm/include/asm/hwcap.h \
  /root/openvswitch-1.4.2/datapath/linux/compat/include/linux/stddef.h \
  include/linux/stddef.h \
  /root/openvswitch-1.4.2/include/linux/types.h \
  /root/openvswitch-1.4.2/datapath/linux/compat/include/linux/types.h \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /root/linux-3.1/arch/arm/include/asm/types.h \
  include/asm-generic/int-ll64.h \
  /root/linux-3.1/arch/arm/include/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  include/linux/posix_types.h \
  /root/linux-3.1/arch/arm/include/asm/posix_types.h \
  /root/linux-3.1/arch/arm/include/asm/outercache.h \
    $(wildcard include/config/outer/cache/sync.h) \
    $(wildcard include/config/outer/cache.h) \
  /root/linux-3.1/arch/arm/include/asm/memory.h \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/thumb2/kernel.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/have/tcm.h) \
    $(wildcard include/config/arm/patch/phys/virt.h) \
    $(wildcard include/config/arm/patch/phys/virt/16bit.h) \
  include/linux/const.h \
  arch/arm/mach-kirkwood/include/mach/memory.h \
  /root/linux-3.1/arch/arm/include/asm/sizes.h \
  include/asm-generic/sizes.h \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  include/asm-generic/cmpxchg-local.h \
  include/asm-generic/cmpxchg.h \
  /root/linux-3.1/arch/arm/include/asm/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/debug/bugverbose.h) \
  include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  /root/openvswitch-1.4.2/datapath/linux/compat/include/linux/reciprocal_div.h \
  include/linux/version.h \
  include/linux/reciprocal_div.h \

/root/openvswitch-1.4.2/datapath/linux/reciprocal_div.o: $(deps_/root/openvswitch-1.4.2/datapath/linux/reciprocal_div.o)

$(deps_/root/openvswitch-1.4.2/datapath/linux/reciprocal_div.o):
