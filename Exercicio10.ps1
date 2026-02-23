#Exercício Loop: Identificar Números Pares e Ímpares
#Enunciado: Leia 10 números e determine quantos são pares e quantos são ímpares.
#Exemplo: Entrada: 2, 3, 5, 6, 8, 9, 10, 12, 14, 15 Saída esperada: Pares: 6 Ímpares: 4
# Exercício Loop: Identificar Números Pares e Ímpares
$pares = 0
$impares = 0
for ($i = 1; $i -le 10; $i++) {
    [int]$num = Read-Host "Introduza o $i º número"
    if ($num % 2 -eq 0) {
        $pares++
    } else {
        $impares++
    }
}
Write-Host "No total foram introduzidos $pares numeros pares"
Write-Host "No total foram introduzidos $impares numeros impares"