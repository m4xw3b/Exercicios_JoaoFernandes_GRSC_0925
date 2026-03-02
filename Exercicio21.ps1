#Crie um algoritmo que mostre os 30 primeiros números ímpares e pares.

$num_par = @()
$num_impar = @()
$cor1="Cyan"
$cor2="Yellow"
for ($i = 1; $i -le 60; $i++) {
    if ($i % 2 -eq 0) {
        $num_par += $i
    }
    else {
        $num_impar += $i
    }
}
Write-Host "`Pressione a tecla ENTER para ver os números Ímpares" 
Read-Host
Write-Host "30 Primeiros Números Ímpares" -ForegroundColor $cor1
$num_impar
Write-Host "`Pressione a tecla ENTER para ver os números pares" 
Read-Host
Write-Host "30 Primeiros Números Pares" -ForegroundColor $cor2
$num_par