#Esse comando copiará o arquivo mar1604.log.txt para o diretório C:\Presentation. Ele não exclui o arquivo original.
copy-item C:\Wabash\Logfiles\mar1604.log.txt -destination C:\Presentation


#Esse comando copia todo o conteúdo do diretório Logfiles para o diretório Drawings. 
#Caso o diretório de origem contenha arquivos nos subdiretórios, esses subdiretórios serão copiados com suas árvores 
#de arquivos intactas. Por padrão, o parâmetro Container é definido como true. Isso faz com que a estrutura do diretório 
#seja preservada.
copy-item C:\Logfiles -destination C:\Drawings -recurse


#Esse comando copia todo o conteúdo do diretório C:\Logfiles para o diretório C:\Drawings\Logs. 
#Ele criará o subdiretório \Logs caso ele ainda não exista.
copy-item C:\Logfiles -destination C:\Drawings\Logs -recurse

