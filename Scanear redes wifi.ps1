$WiFi = (netsh wlan show network  mode=bssid |  Select-Object -Skip  3).Trim()  | Out-String

$Wifi