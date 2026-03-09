#Crie um algoritmo que leia um número inteiro, e diga se ele é um número primo ou não.
[int]$numero = Read-Host "Introduza um número"
$divisores = 0
for ($i = 1; $i -le $numero; $i++) {
    if ($numero % $i -eq 0) {
        $divisores++ 
    }
}

if ($divisores -eq 2) {
    Write-Host "O número $numero é PRIMO." -ForegroundColor Green
}
else {
    Write-Host "O número $numero NÃO é primo." -ForegroundColor Red
}