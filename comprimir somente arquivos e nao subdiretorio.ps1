$compress = @{
Path= "C:\Users\Victor\Downloads\*.*"
CompressionLevel = "Fastest"
DestinationPath = "C:\Users\Victor\Downloads\teste"
}
Compress-Archive @compress

<#Este exemplo compacta apenas os arquivos em um diretório raiz e cria um arquivo morto. 
Não há estrutura de diretórios no arquivo morto, porque apenas os arquivos são compactados.#>