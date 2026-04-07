# This file is part of WADBD
# https://github.com/rhythmcache
ui_print "- Checking USB debugging status..."
if getprop persist.sys.usb.config | grep -q "adb"; then
    ui_print "- USB debugging is enabled."
else
    ui_print "- USB debugging is NOT enabled."
    ui_print "- Warning: USB debugging needs to be enabled for the module to work properly."
fi
[ ! -z "$MMRL" ] && ui_print "- Installing in MMRL"
if [ "$APATCH" ]; then
    ui_print "- APatch: $APATCH_VER │ $APATCH_VER_CODE"
    bin_dir="/data/adb/ap/bin"
    rm -f "$MODPATH/action.sh"
    [ -f "$bin_dir/wadbd" ] && rm -f "$bin_dir/wadbd"
elif [ "$KSU" ]; then
    ui_print "- KSU: $KSU_KERNEL_VER_CODE │ $KSU_VER_CODE"
    bin_dir="/data/adb/ksu/bin"
    rm -f "$MODPATH/action.sh"
    [ -f "$bin_dir/wadbd" ] && rm -f "$bin_dir/wadbd"
elif [ "$MAGISK_VER_CODE" ]; then
    ui_print "- Magisk: $MAGISK_VER │ $MAGISK_VER_CODE"
else
    ui_print "- ! Recovery is not supported."
    abort
fi
if [ "$bin_dir" ] && [ -d "$bin_dir" ]; then
    cp -f "$MODPATH/system/bin/wadbd" "$bin_dir/wadbd"
    chmod 755 "$bin_dir/wadbd"
    touch "$MODPATH/skip_mount"
fi
ui_print "- Manufacturer: $(getprop ro.product.manufacturer)"
ui_print "- Model: $(getprop ro.product.model)"
ui_print "- Android Version: $(getprop ro.build.version.release)"
ui_print "- Security Patch: $(getprop ro.build.version.security_patch)"
ui_print "- Checking installation environment..."
set_perm_recursive "$MODPATH/system" 0 0 0755 0755
ui_print "- Installation Completed!"
