### AnyKernel3
properties() { '
kernel.string=PLEACEHOLDER
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=fog
device.name2=rain
device.name3=wind
'; }

BLOCK=boot;
IS_SLOT_DEVICE=1;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=auto;

. tools/ak3-core.sh && attributes;

dump_boot;

write_boot;

ui_print " ";
ui_print "  Installation Complete!";
ui_print " ";

