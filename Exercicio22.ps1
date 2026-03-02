#Ler 10 números, e determinar se o número par e número impar.

for ($i = 1; $i -le 10; $i++) {
    [int]$numero = Read-Host "Introduza um numero"
    if ($numero % 2 -eq 0) {
        Write-Host "o numero introduzido é par"
    }
    else {
        write-host "O numero introduzido é impar"
    }
}
