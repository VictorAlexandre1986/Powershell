#Mostra todas as unidades de armazenamento
Get-PSDrive -PSProvider FileSystem 


#Por exemplo, você pode criar uma unidade chamada “Office” mapeada para a pasta que contém os 
#aplicativos do Microsoft Office em seu computador, como C:\Arquivos de Programas\Microsoft Office\OFFICE11. 
#Para criar a unidade, digite o seguinte comando:
New-PSDrive -Name Office -PSProvider FileSystem -Root "C:\Program Files\Microsoft Office\OFFICE11"


#Para excluir uma unidade específica do Windows PowerShell, basta fornecer o nome da unidade.
Remove-PSDrive -Name Office

