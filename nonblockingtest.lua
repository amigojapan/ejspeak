function getch_unix()
        os.execute("stty cbreak </dev/tty >/dev/tty 2>&1")
        local key = io.read(1)
        os.execute("stty -cbreak </dev/tty >/dev/tty 2>&1");
        return(key);---***instead of this, do the same as in the windows script, and append the key to KeyBuffer.txt
while true do
	--***wait a certain ammount of time not to access the file system constantly maybe .25 seconds
	--***add checking for unixy system, I think this can be done by just checking to see if /dev/tty exists on the system
	--if so do it the unix way getch_unix()
	print(getch_unix())
	--else do it the windows way run RecordKeyBuffer.ps1
	--read KeyBuffer.txt, eliminate the first character from the file and use it as input
end
--powershell script for input, not tested yet
--first type this in powershell Set-ExecutionPolicy Unrestricted -Force
--to run it ./RecordKeyBuffer.ps1
--if ($Host.UI.RawUI.KeyAvailable) {
--    $key = $Host.UI.RawUI.ReadKey()
--	Add-Content KeyBuffer.txt $key
--}
