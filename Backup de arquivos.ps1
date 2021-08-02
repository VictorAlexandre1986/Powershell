#define a pasta de origem - o caractere "*" significa que iremos pegar tudo, arquivos e pastas. 
$sourcePath = "C:\Users\jlgre\Documents\teste\*"
 
#define a pasta do one drive de destino.
$destinyPath = "C:\Users\jlgre\OneDrive\backup"
 
#pega a data atual no formato dia-mês-ano para fazer o arquiv de log
$date = Get-Date -Format d-m-yyy
 
#Copia da origem para o destino - o parâmetro "Recurse" diz que vai copiar todas as subpastas
#O parâmetro "Verbose" diz que as ações serão mostradas
#para gravar as ações realizadas em um arquivo de log, vamos direcionar a saída do comando (*&gt;) para o arquivo que possui um nome composto por "log" mais a data
Copy-Item $sourcePath $destinyPath -Recurse -Verbose *> "$destinyPath\log-$date.txt"