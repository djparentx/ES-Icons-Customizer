#!/bin/bash

# ---------------------------------------------------------
#					ES Icons Customizer
# ---------------------------------------------------------

# Use this customizer to change the icons after running ES Icon Installer.
#
# The colors may be changed using any HEX value. This is safe.
#
# The icons may be changed by opening the new SVG file in a text editor
# and pasting the values in the corresponding box in this script. This
# is not safe. This can cause invisible icons or crash ES if done wrong.
# The SVG must be in a clean, similar format and contain either
# stroke="#{color value}" or fill="#{color value}" which you can replace
# with the variables used in the script. ex. stroke="$active_color".
#
# If you mess up run 'ES Icon Restore Defaults' to restore default icons.

# --- Icon Colors ---	
active_color="#46a1f4"				#46a1f4 - light blue
idle_color="#ffffff"				#ffffff - white
off_color="#c5c5c5"					#c5c5c5 - light grey
share_color="#00bcd4"				#00bcd4 - cyan
service_color="#fcf66f"				#fcf66f - yellow

RES="/usr/bin/emulationstation/resources"

sudo rm -f \
	"$RES/network.svg" \
	"$RES/network_active.svg" \
	"$RES/network_off.svg" \
	"$RES/network_share.svg" \
	"$RES/network_service.svg" \
	"$RES/bluetooth.svg" \
	"$RES/bluetooth_active.svg" \
	"$RES/bluetooth_off.svg"

# ---  Icon SVG Files ---
# WiFi : connecté, aucun partage
sudo tee "$RES/network.svg" > /dev/null << SVGEOF
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 36 36" stroke="$active_color" fill="none" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
  <path d="M4 16 C12 8, 24 8, 32 16" /><path d="M8 20 C14 14, 22 14, 28 20" /><path d="M12 24 C16 20, 20 20, 24 24" /><circle cx="18" cy="28" r="1.5" fill="$active_color" />
</svg>
SVGEOF

# WiFi : interface UP mais pas d'IP
sudo tee "$RES/network_active.svg" > /dev/null << SVGEOF
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 36 36" stroke="$idle_color" fill="none" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
  <path d="M4 16 C12 8, 24 8, 32 16" /><path d="M8 20 C14 14, 22 14, 28 20" /><path d="M12 24 C16 20, 20 20, 24 24" /><circle cx="18" cy="28" r="1.5" fill="$idle_color" />
</svg>
SVGEOF

# WiFi : désactivé
sudo tee "$RES/network_off.svg" > /dev/null << SVGEOF
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 36 36" stroke="$off_color" fill="none" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
  <path d="M4 16 C12 8, 24 8, 32 16" /><path d="M8 20 C14 14, 22 14, 28 20" /><path d="M12 24 C16 20, 20 20, 24 24" /><circle cx="18" cy="28" r="1.5" fill="$off_color" /><line x1="6" y1="6" x2="30" y2="30" stroke="$off_color" />
</svg>
SVGEOF

# Fléche : partage actif (client SSH/Samba connecté)
sudo tee "$RES/network_share.svg" > /dev/null << SVGEOF
<svg fill="none" height="24" stroke-width="1.5" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M17 20V4M17 4L20 7M17 4L14 7" stroke="$share_color" stroke-linecap="round" stroke-linejoin="round"/><path d="M7 4V20M7 20L10 17M7 20L4 17" stroke="$share_color" stroke-linecap="round" stroke-linejoin="round"/></svg>
SVGEOF

# Trait : services démarrés (SSH/Samba/filebrowser) sans client connecté
sudo tee "$RES/network_service.svg" > /dev/null << SVGEOF
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 36 36" stroke="$service_color" fill="none" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
  <path d="M4 16 C12 8, 24 8, 32 16" /><path d="M8 20 C14 14, 22 14, 28 20" /><path d="M12 24 C16 20, 20 20, 24 24" /><circle cx="18" cy="28" r="1.5" fill="$service_color" />
</svg>
SVGEOF

# Bluetooth : appareil connecté
sudo tee "$RES/bluetooth.svg" > /dev/null << SVGEOF
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 36 36" fill="none" stroke="$active_color" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
  <path d="M11 11l12 12-6 6V7l6 6-12 12"/>
</svg>
SVGEOF

# Bluetooth : actif, aucun appareil connecté
sudo tee "$RES/bluetooth_active.svg" > /dev/null << SVGEOF
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 36 36" fill="none" stroke="$idle_color" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
  <path d="M11 11l12 12-6 6V7l6 6-12 12"/>
</svg>
SVGEOF

# Bluetooth : désactivé
sudo tee "$RES/bluetooth_off.svg" > /dev/null << SVGEOF
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 36 36" fill="none" stroke="$off_color" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
  <path d="M11 11l12 12-6 6V7l6 6-12 12"/>
  <line x1="5" y1="5" x2="31" y2="31" stroke="$off_color"/>
</svg>
SVGEOF

touch /tmp/es-restart
killall emulationstation