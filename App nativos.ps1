<#mostrar app nativos instalados#>

Get-AppxPackage | Select Name, PackageFullName

<#para remover algum programa dessa lista, use o seguinte comando


Get-AppxPackage "NomedoApp" | Remove-AppxPackage


#>