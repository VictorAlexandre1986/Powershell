 $driveEject = New-Object -comObject Shell.Application
  $driveEject.Namespace(17).ParseName("E:").InvokeVerb("Eject")


  #ou desse jeito $usb é a variavel que contem a letra da unidade
  #$Eject.NameSpace(17).ParseName($usb+“:”).InvokeVerb(“Eject”)