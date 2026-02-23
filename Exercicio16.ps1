#Estado do servidor Recebe um dicionário com as chaves "status" e "tempo_resposta". Retorna: 
#• “Servidor ativo” se o status for “ok” 
#• “Servidor lento” se o status for “ok” e o tempo de resposta for maior que 200 ms 
#• “Servidor indisponível” se o status for “erro” 
#• “Estado desconhecido” caso contrário Exemplo: 
#Entrada → {"status": "ok", "tempo_resposta": 350} Saída → Servidor lento
do {
    Write-Host "`n--- Monitor de Servidor (Prima '0' no status para sair) ---" -ForegroundColor Cyan 
    $statusInput = Read-Host "Introduza o status do servidor (ok ou erro)"
    if ($statusInput -eq "0") {
        break
    }
[int]$tempoInput = Read-Host "Introduza o tempo de resposta em ms (ex: 350)"
$servidor = @{
    status         = $statusInput
    tempo_resposta = $tempoInput
}
if ($servidor["status"] -eq "ok" -and $servidor["tempo_resposta"] -gt 200) {
    $mensagem = "Servidor está lento"
    $cor = "Yellow"
}
elseif ($servidor["status"] -eq "ok") {
    $mensagem = "Servidor está ativo"
    $cor = "Green"
}
elseif ($servidor["status"] -eq "erro") {
    $mensagem = "Servidor está indisponível"
    $cor = "Red"
}
else {
    $mensagem = "Estado do servidor é desconhecido"
    $cor = "Gray"
}
Write-Host "Resultado: $mensagem" -ForegroundColor $cor
} while ($true) 