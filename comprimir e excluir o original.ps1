$compress = @{
Path= "C:\Users\Victor\Downloads\*"
CompressionLevel = "Fastest"
DestinationPath = "C:\Users\Victor\Downloads\teste"
}
Compress-Archive @compress

<#o uso do asteriscos compacta para um arquivo e deopis exlcui o original#>