#Exercício 5: Ler 3 Valores e Exibir em 
# Ordem Crescente e Decrescente
[int]$nume1 = Read-Host "Introduza o primeiro numero"
[int]$nume2 = Read-Host "Introduza o segundo numero"
[int]$nume3 = Read-Host "Introduza o terceiro numero"

if ($nume1 -le $nume2 -and $nume1 -le $nume3 -and $nume2 -le $nume3) {
    $cresce = "$nume1, $nume2, $nume3"
    $decresce = "$nume3, $nume2, $nume1"
} 
elseif ($nume1 -le $nume2 -and $nume1 -le $nume3 -and $nume3 -le $nume2) {
    $cresce = "$nume1, $nume3, $nume2"
    $decresce = "$nume2, $nume3, $nume1"
}
elseif ($nume2 -le $nume1 -and $nume2 -le $nume3 -and $nume1 -le $nume3) {
    $cresce = "$nume2, $nume1, $nume3"
    $decresce = "$nume3, $nume1, $nume2"
}
elseif ($nume2 -le $nume1 -and $nume2 -le $nume3 -and $nume3 -le $nume1) {
    $cresce = "$nume2, $nume3, $nume1"
    $decresce = "$nume1, $nume3, $nume2"
}
elseif ($nume3 -le $nume1 -and $nume3 -le $nume2 -and $nume1 -le $nume2) {
    $cresce = "$nume3, $nume1, $nume2"
    $decresce = "$nume2, $nume1, $nume3"
}
else {
    $cresce = "$nume3, $nume2, $nume1"
    $decresce = "$nume1, $nume2, $nume3"
}
Write-Host "Numeros em ordem crescente : $cresce"
Write-Host "Numeros em ordem decrescente : $decresce"
