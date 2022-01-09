$compress = @{
Path= "C:\Users\Victor\Downloads"
CompressionLevel = "Fastest"
DestinationPath = "C:\Users\Victor\Downloads\teste"
}
Compress-Archive @compress

<# The compression level is Fastest to reduce processing time#>