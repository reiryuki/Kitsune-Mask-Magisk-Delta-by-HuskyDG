. "$MODPATH/kitsune.sh"
# Please read document at https://topjohnwu.github.io/Magisk/guides.html
# if you set SKIPUNZIP=1 and manually extract files, write your script here (optional)


# If you set to true, it will force module to abort installer even there are no specific Kitsune Magisk files
REQUIRED_KITSUNE_MAGISK=false

# ** Early-mount **
# Some files need to be mounted as early as possible in the boot process, before the init process is executed. Kitsune Magisk provides a way to mount files in the pre-init stage
# Guide: Place files that your want to mount into your system in pre-init into $MODPATH/early-mount

# ** init.rc injector **
# If you want to inject custom *.rc scripts into your device without repacking the boot image, Kitsune Magisk provides a way to do that
# Guide: Place your rc scripts into $MODPATH/early-mount/initrc.d

# ** Systemless deleting files or folders **
# Kitsune Magisk support deleting files by using whiteout indicator
# You can also declare a list of folders you want to replace in the variable name REMOVE. The module installer script will create the whiteout file listed in REMOVE

# If module contains files in "early-mount" or "root', it will abort installation if you don't use Kitsune Magisk
# Empty folders are also removing automatically
check_if_need_kitsune

# If module does not contain any module files (after installation, there is only module.prop file), it will abort installation
# Empty scripts (post-fs-data.sh, service.sh, system.prop, sepolicy.rule) are removing automatically
check_valid_module

# Write your own script here




# END
