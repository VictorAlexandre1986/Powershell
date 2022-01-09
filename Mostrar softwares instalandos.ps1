Get-ItemProperty HKLM:\Software\Wow6432Node\Mi
crosoft\Windows\CurrentVersion\Uninstall\* 
| Select-Object DisplayName, DisplayVersion | 
Sort-Object -Property DisplayName -Unique | 
Format-Table -AutoSize