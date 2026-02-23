#Exercício 4: Verificar se o Cheque Pode Ser Descontado
[int]$saldo = Read-Host "Introduza o valor do saldo"
[int]$cheque = Read-Host "Introduza o valor do cheque"
if ($saldo -ge $cheque) {
    $descontar = $saldo - $cheque
    Write-Host "Depois do descontar o valor do cheque, o novo saldo é $descontar"
} else {
    write-host "Não existe saldo suficiente"
    }