<# get-process lista completa com todos os campos#>

get-process | where {$_.company -notmatch ‘microsoft’} | Sort Company | Select ID,Name,WS,VM,Company,CPU | format-table -AutoSize

<#

Para um processo

Stop-Process -name firefox

#> 