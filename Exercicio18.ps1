#Operação matemática Recebe uma operação (em texto) e dois números. 
#Operações válidas: "soma", "subtrai", "multiplica", "divide". 
#Exemplo: Entrada → Operação: "divide" Número 1: 20 Número 2: 4 Saída → 5
[string]$operacao = Read-Host "Introduza a operacao (ex: soma, subtrai, multiplica, divide"
[int]$numero1 = Read-Host "Introduza o primeiro numero"
[int]$numero2 = Read-Host "Introduza o segundo numero"
[float]$resultado=0
switch ($operacao) {
    "soma"        { $resultado = $numero1 + $numero2 }
    "subtrai"     { $resultado = $numero1 - $numero2 }
    "multiplica"  { $resultado = $numero1 * $numero2 }
    "divide"      { 
        if ($numero2 -eq 0) { $resultado = "Erro: Divisão por zero!" }
        else { $resultado = $numero1 / $numero2 }
    }
    Default       { $resultado = "Operação inválida!" }
}
Write-Host "Resultado da operação ($operacao) é : $resultado" -ForegroundColor Cyan
