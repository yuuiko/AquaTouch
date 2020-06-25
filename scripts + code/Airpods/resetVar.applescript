
set mode to 2

-- MODE 1: READ
-- MODE 2: CLEAR


tell application "BetterTouchTool"
	
	set AirPodsName to get_string_variable "AirPodsWg_DevceName"
	set widget2 to get_string_variable "BluetoothWg_2_Device"
	set widget3 to get_string_variable "BluetoothWg_3_Device"
	set widget4 to get_string_variable "BluetoothWg_4_Device"
	
	if mode = 1 then
		log "ARP WG: " & AirPodsName
		log "BT WG2: " & widget2
		log "BT WG3: " & widget3
		log "BT WG4: " & widget4
		
		return
		
	else if mode = 2 then
		set_persistent_string_variable "AirPodsWg_DevceName" to ""
		set_persistent_string_variable "BluetoothWg_2_Device" to ""
		set_persistent_string_variable "BluetoothWg_3_Device" to ""
		set_persistent_string_variable "BluetoothWg_4_Device" to ""
		
		set AirPodsName to get_string_variable "AirPodsWg_DevceName"
		set widget2 to get_string_variable "BluetoothWg_2_Device"
		set widget3 to get_string_variable "BluetoothWg_3_Device"
		set widget4 to get_string_variable "BluetoothWg_4_Device"
		
		log "ARP WG: " & AirPodsName
		log "BT WG2: " & widget2
		log "BT WG3: " & widget3
		log "BT WG4: " & widget4
	end if
	
end tell