#Análise de mensagem Recebe uma mensagem e retorna: 
#• “Saudação” se for “olá” ou “bom dia” 
#• “Pergunta” se terminar com “?” 
#• “Despedida” se contiver “tchau” ou “adeus” 
#• “Mensagem genérica” caso contrário 
#Exemplo:Entrada → “Tudo bem?” Saída → Pergunta

[string]$mensagem = Read-Host "Introduza o texto"
if ($mensagem -eq "olá" -or $mensagem -eq "bom dia") {
    $tipo = "Saudação"
}
elseif ($mensagem.EndsWith("?")) {
    $tipo = "Pergunta"
}
elseif ($mensagem -match "tchau" -or $mensagem -match "adeus"){
    $tipo = "Despedida"
}
else { $tipo = "Mensagem genérica"
}

Write-Host "O tipo de mensagem é $tipo"