#Exercício 2: Encontrar o Maior e o Menor Valor entre 3 Números
[int]$numero1 = Read-Host "Introduza o primeiro numero : "
[int]$numero2 = Read-Host "Introduza o segundo numero : "
[int]$numero3 = Read-Host "Introduza o terceiro numero : "
if ($numero1 -ge $numero2 -and $numero1 -ge $numero3) {
    $omaior = $numero1
} elseif ($numero2 -ge $numero1 -and $numero2 -ge $numero3) {
    $omaior = $numero2
} else {
    $omaior = $numero3
}
if ($numero1 -le $numero2 -and $numero1 -le $numero3) {
    $omenor = $numero1
} elseif ($numero2 -le $numero1 -and $numero2 -le $numero3) {
    $omenor= $numero2
} else {
    $omenor = $numero3
}
Write-Host "O numero maior é o $omaior"
Write-Host "O numero menor é $omenor"