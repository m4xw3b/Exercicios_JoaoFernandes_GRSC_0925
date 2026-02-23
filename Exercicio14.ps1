#Tipo de dado Analisa um valor e retorna o seu tipo: 
#• Número inteiro 
#• Número decimal 
#• String numérica 
#• String textual 
#• Lista • 
#Tipo desconhecido Exemplo: 
#Entrada → [10, 20, 30] Saída → Lista
$inputOriginal = Read-Host "Introduza um valor (ex: 100, 100.5, 1,2,3 ou texto)"
if ($inputOriginal -match ',') {
    $valor = $inputOriginal.Split(',') 
}
elseif ($inputOriginal.Contains('.') -and ($inputOriginal -as [float])) {
    $valor = [float]$inputOriginal 
}
elseif ($inputOriginal -as [int]) {
    $valor = [int]$inputOriginal 
}
else {
    $valor = $inputOriginal 
}
if ($valor -is [float] -or $valor -is [double]) {
    $resultado = "Número Decimal"
}
elseif ($valor -is [int]) {
    $resultado = "Número Inteiro"
}
elseif ($valor -is [array]) {
    $resultado = "Lista"
}
else {
    $resultado = "String textual"
}
Write-Host "O tipo de conteudo introduzido é: $resultado"
