
#Esse comando exclui todos os arquivos do diretório 
#C:\Test com nomes que incluem um ponto (.). Como o comando especifica um ponto,
# ele não exclui diretórios ou arquivos sem uma extensão de nome de arquivo.
remove-item C:\Test\*.*

#Esse comando exclui todos os arquivos no diretório atual com a extensão de nome de arquivo .doc e 
#um nome que não inclua "1". Ele usa o caractere curinga (*) para especificar o conteúdo do diretório 
#atual. Utiliza os parâmetros Include e Exclude para especificar os arquivos a serem excluídos.
remove-item * -include *.doc -exclude *1*

#Esse comando exclui um arquivo que seja oculto e somente leitura. 
#Ele usa o parâmetro Path para especificar o arquivo. Utiliza o parâmetro Force 
#para conceder a permissão para excluí-lo. Sem Force, não é possível excluir arquivos somente leitura ou ocultos.
remove-item -path C:\Test\hidden-RO-file.txt -force

#Esse comando exclui todos os arquivos CSV do diretório atual e todos os subdiretórios, recursivamente.
#Como o parâmetro Recurse nesse cmdlet não funciona muito bem, o comando utiliza o cmdlet Get-Childitem para obter 
#os arquivos desejados, e o operador de pipeline os transmitir para o cmdlet Remove-Item.
#No comando Get-ChildItem, o parâmetro Path possui um valor *, que representa o conteúdo do diretório atual. 
#Ele usa o parâmetro Include para especificar o tipo do arquivo CSV, e o parâmetro Recurse tornar a recuperação recursiva. 
#Se você tentar especificar o tipo de arquivo no caminho, como "-path *.csv", o cmdlet interpretará o objeto da
# pesquisa como um arquivo sem itens filhos, e então Recurse falhará.
get-childitem * -include *.csv -recurse | remove-item


#Esse comando exclui a chave de Registro OldApp e todos as subchaves e valores. 
#Ele usa o cmdlet Remove-Item para remover a chave. O caminho é especificado, mas o nome opcional do parâmetro (Path) é omitido.
remove-item hklm:\software\mycompany\OldApp -recurse

 
O parâmetro Recurse exclui recursivamente todo o conteúdo da chave OldApp. Caso a chave contenha subchaves e o parâmetro Recurse seja omitido, será solicitado que você confirme que deseja excluir o conteúdo da chave.
