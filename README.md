# Kitsune Mask Magisk Delta by HuskyDG

## Descriptions
- I put the original Kitsune Mask Magisk Delta by HuskyDG here because https://github.com/HuskyDG/magisk-files is already gone.
- One thing that differentiates Kitsune Mask from Magisk official is the early/pre-init mount capability.
- Kitsune Mask emerged as a clever solution by HuskyDG for installing Dolby modules in erofs ROMs that does not allow real writing to the manifest.xml file into the ROM.
- With the early/pre init mount capability, ROM manifest.xml modifications can work systemlessly and erofs is no longer a problem for installing Dolby modules.
- I saw someone is forked Kitsune Mask, but it turns out the early/pre init mount capability is broken and doesn't work at all.
- R6687BB53 build 27001 is debug version (but stable enough) and supports /odm and /my_product mounts.
- 26.4 build 26400 is stable version but doesn't support /odm and /my_product mounts.
- Updated libmagiskpolicy.so from Magisk official as a fix for selinux denials issues in recent ROMs.

## Changelog and Download Links

Kitsune Mask Module Template Example: https://move2link.co/f96481c

v0.2_RM Debug: https://move2link.co/350181b
v0.2_RM Stable: https://move2link.co/f992185
- Update libmagiskpolicy.so from Magisk (debug) 31.0 (31000)

v0.1_RM Debug: https://move2link.co/57de419
v0.1_RM Stable: https://move2link.co/390f1ea
- Update libmagiskpolicy.so from Magisk (stable) 30.7 (30700)
- If you previously installed the original version of the apk, you may need to uninstall it first to install the RM version of the apk because it has different apk signature.

## Download Tutorial
https://t.me/ryukinotes/97

## Known Issue
While pressing "Reboot to Recovery" it looks like it says "Factory Reset" but don't worry it's nothing.


