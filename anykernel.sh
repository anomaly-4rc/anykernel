### AnyKernel3 - ZEN-Columbina-KernMoon-OC
## Proudly Modded by Anomaly-arc (Filia-Lunae)

properties() { '
kernel.string=ZEN-Columbina-KernMoon-OC
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=fog
device.name2=rain
device.name3=wind
'; }

# --- SETUP VARIABLES ---
BLOCK=boot;
IS_SLOT_DEVICE=1;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=auto;

# --- IMPORT CORE ---
. tools/ak3-core.sh && attributes;

# --- INSTALLATION ---
ui_print " ";
ui_print "  | ZEN-Columbina Project |";
ui_print "  |   - Kernel Moon OC -  |";
ui_print "  -------------------------";
ui_print "  Modder: Anomaly-arc";
ui_print "  Device: Redmi 10C (fog)";

dump_boot;

if [ -f "$home/Image.gz-dtb" ]; then
    ui_print " ";
    ui_print " • Luna Kernel OC Edition detected!";
    ui_print " • Profile: Adreno 610 @1127MHz";
    ui_print " • Memory: Bus locked @2400MHz";
    ui_print " • Note: Use cooler for best stability!";
elif [ -f "$home/Image.gz" ]; then
    ui_print " ";
    ui_print " • Generic Image.gz detected!";
    ui_print " • Flashing kernel without DTB...";
else
    ui_print " ";
    ui_print " ! ERROR: No kernel image found in zip !";
    exit 1;
fi

write_boot;

ui_print " ";
ui_print "  Installation Complete!";
ui_print "  Enjoy the performance beast.";
ui_print " ";
