#!/bin/bash

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

# WiFi vert : connecté, aucun partage
sudo tee "$RES/network.svg" > /dev/null << 'SVGEOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 36 36" stroke="#28a745" fill="none" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
  <path d="M4 16 C12 8, 24 8, 32 16"/><path d="M8 20 C14 14, 22 14, 28 20"/>
  <path d="M12 24 C16 20, 20 20, 24 24"/><circle cx="18" cy="28" r="2" fill="#28a745"/>
</svg>
SVGEOF

# WiFi orange : interface UP mais pas d'IP
sudo tee "$RES/network_active.svg" > /dev/null << 'SVGEOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 36 36" stroke="#FFA000" fill="none" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
  <path d="M4 16 C12 8, 24 8, 32 16"/><path d="M8 20 C14 14, 22 14, 28 20"/>
  <path d="M12 24 C16 20, 20 20, 24 24"/><circle cx="18" cy="28" r="2" fill="#FFA000"/>
</svg>
SVGEOF

# WiFi rouge : désactivé
sudo tee "$RES/network_off.svg" > /dev/null << 'SVGEOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 36 36" stroke="#dc3545" fill="none" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
  <path d="M4 16 C12 8, 24 8, 32 16"/><path d="M8 20 C14 14, 22 14, 28 20"/>
  <path d="M12 24 C16 20, 20 20, 24 24"/><circle cx="18" cy="28" r="2" fill="#dc3545"/>
  <line x1="5" y1="5" x2="31" y2="31" stroke-width="2.5"/>
</svg>
SVGEOF

# Fléche cyan : partage actif (client SSH/Samba connecté)
sudo tee "$RES/network_share.svg" > /dev/null << 'SVGEOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 36 36" stroke="#00BCD4" fill="none" stroke-width="3.5" stroke-linecap="round" stroke-linejoin="round">
  <line x1="18" y1="30" x2="18" y2="14"/>
  <polyline points="10,17 18,9 26,17"/>
</svg>
SVGEOF

# Trait or : services démarrés (SSH/Samba/filebrowser) sans client connecté
sudo tee "$RES/network_service.svg" > /dev/null << 'SVGEOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 36 36" stroke="#FFD700" fill="none" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
  <line x1="10" y1="10" x2="28" y2="10" stroke-width="3.5"/>
  <line x1="10" y1="18" x2="28" y2="18" stroke-width="3.5"/>
  <line x1="10" y1="26" x2="28" y2="26" stroke-width="3.5"/>  
</svg>
SVGEOF

# Bluetooth bleu : appareil connecté
sudo tee "$RES/bluetooth.svg" > /dev/null << 'SVGEOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 36 36" fill="none" stroke="#007bff" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
  <path d="M11 11l12 12-6 6V7l6 6-12 12"/>
</svg>
SVGEOF

# Bluetooth orange : actif, aucun appareil connecté
sudo tee "$RES/bluetooth_active.svg" > /dev/null << 'SVGEOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 36 36" fill="none" stroke="#ff6600" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
  <path d="M11 11l12 12-6 6V7l6 6-12 12"/>
</svg>
SVGEOF

# Bluetooth rouge : désactivé
sudo tee "$RES/bluetooth_off.svg" > /dev/null << 'SVGEOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 36 36" fill="none" stroke="#dc3545" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
  <path d="M11 11l12 12-6 6V7l6 6-12 12"/>
  <line x1="5" y1="5" x2="31" y2="31" stroke="#dc3545"/>
</svg>
SVGEOF

touch /tmp/es-restart
killall emulationstation