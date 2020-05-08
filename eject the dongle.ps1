$driver_to_eject = gwmi Win32_Volume | Where-Object {$_.Name -eq "G:\"}
$driver_to_eject.DriverLetter= $true
$driver_to_eject.get()
$driver_to_eject.dismount($trye,$true)