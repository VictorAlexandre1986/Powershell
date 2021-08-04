$compress = @{
Path= "C:\Users\Victor\Downloads\ebejr01.pdf","C:\Users\Victor\Downloads\ebejr02.pdf"
CompressionLevel = "Fastest"
DestinationPath = "C:\Users\Victor\Downloads\teste"
}
Compress-Archive @compress