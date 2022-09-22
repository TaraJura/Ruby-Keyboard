require "win32ole"

wsh = WIN32OLE.new("WScript.Shell")
wsh.Run("Notepad.exe")
while not wsh.AppActivate("Notepad")
  sleep .1
end
wsh.SendKeys("Look Ma, keystrokes!")
