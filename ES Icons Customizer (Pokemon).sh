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
active_color="#fed300"				# electric
bt_active_color="#46a1f4"			# blue
idle_color="#ffffff"				# rock
bt_idle_color="#c52828"				# red
off_color="#c5c5c5"					# dark
bt_off_color="#c5c5c5"				# light grey
share_color="#46a1f4"				# fairy
service_color="#6aa84f"				# psychic

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
<?xml version="1.0" encoding="UTF-8"?><svg id="a" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 243.2 243.2"><circle cx="121.6" cy="121.6" r="121.6" fill="#fbd100"/><polygon points="174.98 132.41 147.85 48.62 89.4 48.62 105.14 95.73 60.22 95.73 148.63 200.58 131.34 132.41 174.98 132.41" fill="#fff" fill-rule="evenodd"/></svg>
SVGEOF

# WiFi : interface UP mais pas d'IP
sudo tee "$RES/network_active.svg" > /dev/null << SVGEOF
<?xml version="1.0" encoding="UTF-8"?><svg id="a" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 243.2 243.2"><circle cx="121.6" cy="121.6" r="121.6" fill="#c8b686"/><path d="M167.6,118.04s-.01-.03-.01-.05l10.76-62.76s.03-.05.06-.05h3.41s.05.02.06.04l24.25,76.77s0,.05-.02.07l-17.88,13.96s-.07.01-.09-.01l-20.54-27.97ZM37.08,159.64s.02.05.04.06l36.85,12.05s.04,0,.05,0l82.37-56.87s.02-.02.02-.04l8.83-59.27s-.02-.07-.06-.07h-72.96s-.04,0-.05.02l-55.1,66.47s-.01.02-.01.04v37.62ZM89.33,174.82l40.26,13.19s.04,0,.05,0l47.93-34.38s.03-.05.01-.08l-17.97-26.74s-.06-.04-.08-.02l-70.21,48.04Z" fill="#fff" fill-rule="evenodd"/></svg>
SVGEOF

# WiFi : désactivé
sudo tee "$RES/network_off.svg" > /dev/null << SVGEOF
<?xml version="1.0" encoding="UTF-8"?><svg id="a" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 243.2 243.2"><circle cx="121.6" cy="121.6" r="121.6" fill="#5b5466"/><path d="M101.53,183.88c3.54.47,7.17.72,10.86.72,39.32,0,71.19-27.79,71.19-62.08s-31.88-62.08-71.19-62.08c-2.64,0-5.24.13-7.81.37,19.5,12.88,32.4,35.2,32.4,60.58,0,26.68-14.25,49.98-35.46,62.49ZM121.6,198.96c42.73,0,77.36-34.64,77.36-77.36s-34.64-77.36-77.36-77.36S44.24,78.87,44.24,121.6s34.64,77.36,77.36,77.36Z" fill="#fff" fill-rule="evenodd"/></svg>
SVGEOF

# Fléche : partage actif (client SSH/Samba connecté)
sudo tee "$RES/network_share.svg" > /dev/null << SVGEOF
<?xml version="1.0" encoding="UTF-8"?><svg id="a" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 243.2 243.2"><circle cx="121.6" cy="121.6" r="121.6" fill="#fb89eb"/><path d="M67.96,174.09l28.74-8.33,24.82,45.39c.03.06.12.06.15,0l24.82-45.39,28.74,8.33c.06.02.12-.04.1-.11l-8.33-28.17,44.13-24.14c.06-.03.06-.12,0-.15l-44.5-24.34,8.7-29.4c.02-.06-.04-.12-.1-.11l-29.41,8.53-24.15-44.15c-.03-.06-.12-.06-.15,0l-24.15,44.15-29.41-8.53c-.06-.02-.12.04-.11.11l8.7,29.4-44.5,24.34c-.06.03-.06.12,0,.15l44.13,24.14-8.33,28.17c-.02.06.04.12.11.11ZM90.26,121.91l20.36,11.13,11.14,20.36c.03.06.12.06.15,0l11.14-20.36,20.36-11.14c.06-.03.06-.12,0-.15l-20.36-11.14-11.14-20.36c-.03-.06-.12-.06-.15,0l-11.14,20.36-20.36,11.14c-.06.03-.06.12,0,.15Z" fill="#fff" fill-rule="evenodd"/></svg>
SVGEOF

# Trait : services démarrés (SSH/Samba/filebrowser) sans client connecté
sudo tee "$RES/network_service.svg" > /dev/null << SVGEOF
<?xml version="1.0" encoding="UTF-8"?><svg id="a" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 243.2 243.2"><circle cx="121.6" cy="121.6" r="121.6" fill="#ff6675"/><path d="M182.51,177.46c-.73,1.08-1.86,1.68-2.88,2.4-10.55,7.42-22.27,11.92-34.95,14.07-6.83,1.16-13.7,1.53-20.59,1.19-15.92-.78-30.83-4.84-44.11-13.98-14.9-10.26-24.22-24.31-28.27-41.9-1.68-7.28-2.22-14.66-1.74-22.08.84-12.92,4.11-25.17,11.13-36.15,9.08-14.21,21.81-23.81,37.85-29.01,9.18-2.98,18.59-4.4,28.23-3.95,14.76.69,28.18,5.24,39.86,14.46,9.17,7.24,15.36,16.6,19.01,27.62,5.38,16.25,4.38,32.08-3.48,47.4-2.59,5.05-6.37,9.08-10.49,12.83-7.56,6.88-16.24,11.72-26.36,13.5-14.86,2.6-28.3-.56-39.67-10.82-7.21-6.51-11.29-14.73-12.57-24.36-.81-6.13-.45-12.18,1.61-17.99,4.25-11.98,12.94-19.09,25.22-21.7,7.63-1.62,15.07-.75,21.84,3.49,7.19,4.51,11.15,11.23,12.27,19.47,1.39,10.14-6.05,20.13-16.24,22.38-3.01.66-6.01.72-9.03,0-5.81-1.4-10.53-6.45-11.45-12.3-.35-2.24.02-4.44.57-6.6.35-1.37,1.31-1.91,2.47-1.63,1.11.27,1.79,1.24,1.59,2.54-.16,1.04-.26,2.06-.13,3.09.7,5.67,5.56,9.08,11.42,8.03.15-.03.29-.07.43-.1,10.21-2.14,11.21-12.69,7.65-18.71-2.54-4.28-6.43-6.67-11.23-7.64-9.72-1.97-17.79,4.11-20.81,11.21-3.79,8.92-2.27,17.17,4,24.43,8.58,9.94,23.25,12.34,34.86,5.8,9.88-5.57,15.87-13.99,17.34-25.22,1.46-11.2-1.44-21.15-9.09-29.81-6.88-7.78-15.41-12.21-25.43-13.81-24.79-3.96-45.6,8.78-54.52,30.61-3.69,9.02-4.81,18.43-3.75,28.12,1.61,14.79,7.65,27.45,18.35,37.78,9.42,9.09,20.64,14.84,33.53,17.17,19.4,3.51,37.71.04,55.1-8.93.78-.4,1.48-1.02,2.45-.93l.03.03Z" fill="#fefefe"/></svg>
SVGEOF

# Bluetooth : appareil connecté
sudo tee "$RES/bluetooth.svg" > /dev/null << SVGEOF
<?xml version="1.0" encoding="UTF-8"?><svg id="a" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 674.71 672.06"><g id="b"><path id="c" d="M665.56,337.36c0-181.26-146.94-328.2-328.2-328.2S9.15,156.1,9.15,337.36" fill="#196eef" stroke="#000" stroke-miterlimit="10.31" stroke-width="18.31"/><path id="d" d="M665.33,334.84c0,181.18-146.88,328.06-328.06,328.06S9.21,516.03,9.21,334.84" fill="#f2f2f2" stroke="#000" stroke-miterlimit="10.31" stroke-width="18.3"/><rect id="e" x="17.76" y="314.23" width="640.97" height="54.33" stroke="#000" stroke-width="18.31"/><path id="f" d="M256.86,332.82c-2.64,47.33,33.59,87.85,80.93,90.49,47.33,2.64,87.84-33.59,90.48-80.93,2.64-47.33-33.59-87.85-80.93-90.49-47.31-2.64-87.81,33.56-90.48,80.87" fill="#f2f2f2" stroke="#000" stroke-miterlimit="16.72" stroke-width="18.1"/><path id="g" d="M296.31,333.1c-1.4,25.5,18.14,47.3,43.63,48.7,25.5,1.4,47.3-18.14,48.7-43.63,1.4-25.5-18.14-47.3-43.63-48.7-25.25-1.39-46.93,17.77-48.66,43" fill="#999"/></g></svg>
SVGEOF

# Bluetooth : actif, aucun appareil connecté
sudo tee "$RES/bluetooth_active.svg" > /dev/null << SVGEOF
<?xml version="1.0" encoding="UTF-8"?><svg id="a" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 674.71 672.06"><g id="b"><path id="c" d="M665.56,337.36c0-181.26-146.94-328.2-328.2-328.2S9.15,156.1,9.15,337.36" fill="#f00000" stroke="#000" stroke-miterlimit="10.31" stroke-width="18.31"/><path id="d" d="M665.33,334.84c0,181.18-146.88,328.06-328.06,328.06S9.21,516.03,9.21,334.84" fill="#f2f2f2" stroke="#000" stroke-miterlimit="10.31" stroke-width="18.3"/><rect id="e" x="17.76" y="314.23" width="640.97" height="54.33" stroke="#000" stroke-width="18.31"/><path id="f" d="M256.86,332.82c-2.64,47.33,33.59,87.85,80.93,90.49,47.33,2.64,87.84-33.59,90.48-80.93,2.64-47.33-33.59-87.85-80.93-90.49-47.31-2.64-87.81,33.56-90.48,80.87" fill="#f2f2f2" stroke="#000" stroke-miterlimit="16.72" stroke-width="18.1"/><path id="g" d="M296.31,333.1c-1.4,25.5,18.14,47.3,43.63,48.7,25.5,1.4,47.3-18.14,48.7-43.63,1.4-25.5-18.14-47.3-43.63-48.7-25.25-1.39-46.93,17.77-48.66,43" fill="#999"/></g></svg>
SVGEOF

# Bluetooth : désactivé
sudo tee "$RES/bluetooth_off.svg" > /dev/null << SVGEOF
<?xml version="1.0" encoding="UTF-8"?><svg id="a" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 674.71 672.06"><g id="b"><path id="c" d="M665.56,337.36c0-181.26-146.94-328.2-328.2-328.2S9.15,156.1,9.15,337.36" fill="#c5c5c5" stroke="#000" stroke-miterlimit="10.31" stroke-width="18.31"/><path id="d" d="M665.33,334.84c0,181.18-146.88,328.06-328.06,328.06S9.21,516.03,9.21,334.84" fill="#f2f2f2" stroke="#000" stroke-miterlimit="10.31" stroke-width="18.3"/><rect id="e" x="17.76" y="314.23" width="640.97" height="54.33" stroke="#000" stroke-width="18.31"/><path id="f" d="M256.86,332.82c-2.64,47.33,33.59,87.85,80.93,90.49,47.33,2.64,87.84-33.59,90.48-80.93,2.64-47.33-33.59-87.85-80.93-90.49-47.31-2.64-87.81,33.56-90.48,80.87" fill="#f2f2f2" stroke="#000" stroke-miterlimit="16.72" stroke-width="18.1"/><path id="g" d="M296.31,333.1c-1.4,25.5,18.14,47.3,43.63,48.7,25.5,1.4,47.3-18.14,48.7-43.63,1.4-25.5-18.14-47.3-43.63-48.7-25.25-1.39-46.93,17.77-48.66,43" fill="#999"/></g></svg>
SVGEOF

touch /tmp/es-restart
killall emulationstation