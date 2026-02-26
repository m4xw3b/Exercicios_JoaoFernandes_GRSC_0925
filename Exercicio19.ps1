#Processamento de requisição Recebe um dicionário com as chaves "metodo" e "conteudo". 
#Retorna: • “Requisição GET recebida” se o método for “GET” 
#• “Requisição POST com dados válidos” se o método for “POST” e o conteúdo não estiver vazio 
#• “Requisição POST sem dados” se o método for “POST” e o conteúdo estiver vazio 
#• “Método não suportado” caso contrário 
#Exemplo Entrada → {"metodo": "POST", "conteudo": ""} Saída → Requisição POST sem dados

[string]$tipo_metodo = Read-Host "Introduza o tipo de requisicao (ex: GET ou POST)"
[string]$tipo_conteudo = Read-Host "Introduza o conteúdo da requisição (deixe vazio para testar)"
$requisicao =@{
    metodo=$tipo_metodo
    conteudo=$tipo_conteudo
}
if ($requisicao["metodo"] -eq "GET") {
    $resultados = "Requisição GET recebida"
}
elseif ($requisicao["metodo"] -eq "POST") {
    if (-not [string]::IsNullOrWhiteSpace($requisicao["conteudo"])) {
        $resultados = "Requisição POST com dados válidos"
    }
    else {
        $resultados = "Requisição POST sem dados"
    }
}
else {
    $resultados = "Método não suportado"
}
Write-Host "Resultado: $resultados" -ForegroundColor Cyan