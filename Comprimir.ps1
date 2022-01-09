$compress = @{
Path= "C:\Users\Victor\Downloads\*.pdf"
CompressionLevel = "Fastest"
DestinationPath = "C:\Users\Victor\Downloads\teste"
}
Compress-Archive @compress

<# Optimal comprimi mais que Fastest,mas exige mais do processamento#>
<# -force = executa a ação e não pergunta se deseja continua#>