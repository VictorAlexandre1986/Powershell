#Visualizar todos os processos
Get-Process

#Visualizar apenas com nome especificos
Get-Process firefox

#Visualizar buscando por parte da string,usando caracter coringa
Get-Process *fox
Get-Process fire* 

#Vizualizando os processos mas selecionando os campos desejados
Get-Process | Format-Table Name,Id

#Visualizar processos de computador remoto
#Get-Process -ComputerName localhost,Server01

#Parando um processo, forçando sua parada com confirm
#Stop-Process -Name firefox -Confirm

#Finalizando todos os processos que não respondem
#Get-Process | Where-Object -FilterScript {$_.Responding -eq $false} | Stop-Process


#Finalizando um processo em um computador remoto
#Invoke-Command -ComputerName Server01 {Stop-Process Powershell}

#Ocasionalmente, pode ser útil poder parar a execução de todas as sessões do Windows PowerShell 
#que não sejam a sessão atual. Se uma sessão usar muitos recursos ou estiver inacessível 
#Cada sessão do Windows PowerShell tem uma variável de ambiente PID que contém a ID do processo do Windows PowerShell. 
#Você pode verificar o $PID com a ID de cada sessão e encerrar somente sessões do Windows PowerShell que têm uma ID diferente. 
#O comando de pipeline a seguir faz isso e retorna a lista de sessões finalizadas (devido ao uso do parâmetro PassThru):
#Get-Process -Name powershell | Where-Object -FilterScript {$_.Id -ne $PID} | Stop-Process -PassThru