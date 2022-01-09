#Inicia o processo usando valores padrões
#Start-Process -FilePath "sorte.exe"

#Imprimir um arquivo de texto
#Start-Process -FilePath "myfile.txt" -WorkingDirectory "C:\PS-Test" -Verb Print

#Iniciar um processo para ordenar itens em um novo arquivo
#Start-Process -FilePath "Sort.exe" -RedirectStandardInput "Testsort.txt" -RedirectStandardOutput "Sorted.txt" -RedirectStandardError "SortError.txt" -UseNewEnvironment

