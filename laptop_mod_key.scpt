tell application "System Preferences"
	activate
	set current pane to pane "com.apple.preference.keyboard"
end tell
delay 0.5
tell application "System Events" to tell process "System Preferences" to tell window "Keyboard"
	click button "Modifier Keys…" of tab group 1
	try
		# selecting which keyboard I would like to change mod keys for 
		click pop up button 6 of sheet 1
		click menu item "Karabiner VirtualHIDKeyboard" of menu 1 of pop up button 6 of sheet 1
		# open 'option key' menu and then select 'command'
		click pop up button 4 of sheet 1
		click menu item 3 of menu 1 of pop up button 4 of sheet 1
		# open 'command key' menu and then select 'option'
		click pop up button 1 of sheet 1
		click menu item 4 of menu 1 of pop up button 1 of sheet 1
	end try
	
	try
		click button "OK" of sheet 1
	end try
end tell

quit application "System Preferences"
