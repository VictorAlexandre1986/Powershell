$server = hostname
Get-WinEvent -LogName system -ComputerName $server | where {($_.ID -eq 1074) -or ($_.ID -eq 6008) -or ($_.ID -eq 41 )} | select -First 3 | fl 

<#Backup de log de reinicialização do servidor remoto#>