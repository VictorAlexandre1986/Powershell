
#mostra todos os dispositivos
Get-PnpDevice -FriendlyName

#Mostrando todos os dispositivos com o nome informado
Get-PnpDevice -FriendlyName "*Hyper-V*"

#Encontre o InstanceID do dispositivo
Get-PnpDevice -FriendlyName "*killer*" | ft -wrap -autosize friendlyname, instanceid
#A status of ‘Error’ indicates that the device is not enabled.  You can also check manually with the device manager.
#A status of ‘OK’ indicates that it is enabled.


#Desabilite o dispositivo usando o InstanceID encontrado
#Disable-PnpDevice -InstanceId "PCI\VEN_1969&DEV_E0A1&SUBSYS_E0001458&REV_10\4&325A602&0&00E2" -confirm:$false


