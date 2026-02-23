#Tipo de pedido Recebe um dicionário com as chaves "tipo" e "valor". Exibe: 
#• “Compra de X€” se tipo for “compra” 
#• “Venda de X€” se tipo for “venda” 
#• “Pedido desconhecido” caso contrário Exemplo: Entrada → {"tipo": "venda", "valor": 250} Saída → Venda de 250€
$tipoInput = Read-Host "Introduza o tipo de pedido (compra ou venda)"
$valorInput = Read-Host "Introduza o valor"
$pedido = @{
    tipo  = $tipoInput
    valor = $valorInput
}

if ($pedido["tipo"] -eq "compra") {
    Write-Host "Compra de $($pedido['valor'])€" -ForegroundColor Cyan
}
elseif ($pedido["tipo"] -eq "venda") {
    Write-Host "Venda de $($pedido['valor'])€" -ForegroundColor Green
}
else {
    Write-Host "Pedido desconhecido" -ForegroundColor Red
}
