﻿$array = 1,2,3,4,5,6,7,8,9,10


("################### Laço de rpetição FOR#####################")

For($i=1;$i -lt 11;$i++){
        Write-Host $i
    }

("#############################################################")




("################### Laço de rpetição WHILE ################")

$i = 1
While($i -lt 5) 
{
    Write-Host $i; $i++
}

("#############################################################")


("################### Laço de rpetição DO WHILE ################")

$i = 1
do {
    Write-Host $i; $i++
    }
while ($i -lt 5)

("#############################################################")