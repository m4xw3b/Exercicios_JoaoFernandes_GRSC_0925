#Classificação de nota Lê uma nota (0–100) e retorna uma classificação: 
#• 90 ou mais → Excelente • 70–89 → Bom • 50–69 → Suficiente 
#• Abaixo de 50 → Insuficiente Exemplo: Entrada → Bom Saída → 70-89
[string]$nome = Read-Host "Qual o nome do aluno"
[int]$nota = Read-Host "Introduza a nota do $nome de 0 a 100"
if ($nota -ge 90) {
    $resultado = "Excelente"
}
elseif ($nota -ge 70) {
    $resultado = "Bom"
}
elseif ($nota -ge 50) {
    $resultado = "Suficiente"
}
else { 
    $resultado = "Insuficiente"
}
Write-Host "A classificação do $nome é $resultado"