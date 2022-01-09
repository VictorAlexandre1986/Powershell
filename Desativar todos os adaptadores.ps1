#Verificando o adaptador Ethernet está conectado
If ( (Get-NetAdapter -Name 'Ethernet').MediaConnectionState -eq 'Connected' ){
   
   #Procurando todos os adaptadores que não possue o nome ethernet
    (Get-NetAdapter).where({$psitem.name -notmatch 'ethernet'}) | Disable-NetAdapter -Confirm:$false}


#Esse script vai desativar todos os adaptadores com o nome de Ethernet