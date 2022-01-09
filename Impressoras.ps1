#Mostrar todas as impressoras intaladas 
(New-Object -ComObject WScript.Network).EnumPrinterConnections()

#Adicionando um impressora de rede
#(New-Object -ComObject WScript.Network).AddWindowsPrinterConnection("\\Printserver01\Xerox5")

#Definindo uma impressora como padrão
#(Get-WmiObject -ComputerName . -Class Win32_Printer -Filter "Name='HP LaserJet 5Si'").SetDefaultPrinter()              
#ou
#(New-Object -ComObject WScript.Network).SetDefaultPrinter('HP LaserJet 5Si')

#Removendo um impressora de rede
#(New-Object -ComObject WScript.Network).RemovePrinterConnection("\\Printserver01\Xerox5")
