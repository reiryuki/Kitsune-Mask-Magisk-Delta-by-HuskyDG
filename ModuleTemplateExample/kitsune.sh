check_if_need_kitsune() {

# Remove all empty folder
rm -rf "$MODPATH/early-mount/initrc.d/example.rc"
for part in $(ls "$MODPATH/root")
do
  rmdir "$MODPATH/root/$part"
done
for dir in system early-mount/initrc.d early-mount/system early-mount root zygisk
do
  rmdir "$MODPATH/$dir"
done

if [[ "$MAGISK_VER" != *"-kitsune" ]]; then
  # This feature is only available on Kitsune Magisk
  if [ -d "$MODPATH/early-mount" ] || [ "$REQUIRED_KITSUNE_MAGISK" == true ]; then
    ui_print "*********************************************************"
    ui_print "! Please use Kitsune Magisk"
    abort    "*********************************************************"
  fi
else
  // This feature is only available on Kitsune Magisk 27000+
  if [ "$MAGISK_VER_CODE" -lt 27000 ] && [ -d "$MODPATH/root" ]; then
    ui_print "*********************************************************"
    ui_print "! Please use Kitsune Magisk 27000+"
    abort    "*********************************************************"
  fi
fi
}

check_valid_module() {
# Remove empty files
for s in post-fs-data.sh service.sh sepolicy.rule system.prop
do
  [ "$(stat -c '%s' "$MODPATH/$s")" == "0" ] && rm -rf "$MODPATH/$s"
done
for m in root system post-fs-data.sh service.sh sepolicy.rule system.prop early-mount
do
  [ -e "$MODPATH/$m" ] && return
done
abort "! Nothing to install, abort"
}