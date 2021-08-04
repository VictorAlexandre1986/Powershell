Get-ChildItem -Path C:\Users\Victor\Downloads\Eletronica -Recurse |
  Compress-Archive -DestinationPath C:\Users\Victor\Downloads\teste.zip

  <#O diretório C: \ TestLog não contém nenhum arquivo. Ele contém um subdiretório chamado testsub que contém o arquivo testlog.txt.

Get-ChildItem usa o parâmetro Path para especificar o diretório raiz, C: \ TestLog. O parâmetro Recurse processa os arquivos e diretórios. Um objeto DirectoryInfo é criado para o testingub e um objeto FileInfo testlog.txt.

Cada objeto é enviado pelo pipeline para o Compress-Archive. O DestinationPath especifica o local para o arquivo morto. O parâmetro Path não está especificado porque os objetos de pipeline são recebidos na posição de parâmetro 0.#>