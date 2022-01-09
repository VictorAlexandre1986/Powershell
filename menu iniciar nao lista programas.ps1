Get-AppXPackage -AllUsers | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register “$($_.InstallLocation)\AppXManifest.xml”}

<#O menu iniciar do win 10 nao localiza os rogramas instalados, apos rodar o scrip reinciar o windows#>