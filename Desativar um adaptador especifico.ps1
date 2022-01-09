#Verificando o adaptador Ethernet está conectado
If ( (Get-NetAdapter -Name 'Ethernet').MediaConnectionState -eq 'Connected' ){
   
   #Se o adaptador estiver conectado ele desconecta
    Disable-NetAdapter -Name "Ethernet" -Confirm:$false}


#Esse script vai desativar todos o adaptador com o nome de Ethernet caso ele esteja conectado


#Exemplo abaixo desativa todos os adaptadores

#Disable-NetAdapter -Name "*"