
If ( (Get-NetAdapter -Name 'Ethernet').MediaConnectionState -eq 'Disconnected' ){

    #Ativar o adaptador com o nome de Ethernet
    Enable-NetAdapter -Name "Ethernet" 

}