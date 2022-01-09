#Mostrar as impressoras instaladas
Get-CimInstance -Class Win32_Printer

#Para adicionar uma nova impressora de rede, use WScript.Network:
(New-Object -ComObject WScript.Network).AddWindowsPrinterConnection("\\Printserver01\Xerox5")

#Configurar uma impressora padrão
(New-Object -ComObject WScript.Network).SetDefaultPrinter('HP LaserJet 5Si')

#Remover a conexão da impressora
(New-Object -ComObject WScript.Network).RemovePrinterConnection("\\Printserver01\Xerox5")

