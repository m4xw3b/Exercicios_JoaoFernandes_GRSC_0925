#Exercício 3: Mostrar Números em Ordem Crescente e Decrescente
[int]$num1 = Read-Host "Introduza o primeiro numero"
[int]$num2 = Read-Host "Introduza o segundo numero"
if ($num1 -le $num2) {
    $crescente = "$num1, $num2"
    $decrescente = "$num2, $num1"
} else {
    $crescente = "$num2, $num1"
    $decrescente = "$num1, $num2"
}
Write-Host "Crescente: $crescente"
Write-Host "Decrescente: $decrescente"