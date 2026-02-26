#Classificação de produto 
#Recebe um dicionário com as chaves "categoria" e "preco". 
#Retorna: • “Produto de luxo” se categoria for “eletrônico” e preço acima de 1000 
#• “Produto comum” se categoria for “eletrônico” e preço até 1000 
#• “Produto alimentar” se categoria for “alimento” 
#• “Categoria desconhecida” caso contrário 
#Exemplo: Entrada → {"categoria": "eletrônico", "preco": 1500} Saída → Produto de luxo
[string]$categoria_produto = Read-Host "Introduza a categoria de produto (ex: eletronico, alimento) "
[float]$preco_produto = Read-Host "Introduza o preço do produto (ex: 1000.00) "
$registo = @{
    categoria = $categoria_produto
    preco = $preco_produto
}
if ($registo["categoria"] -eq "eletronico" -and $registo["preco"] -gt 1000) {
    $resultado = "Produto de Luxo"
}
elseif ($registo["categoria"] -eq "eletronico" -and $registo["preco"] -le 1000){
    $resultado = "Produto comum"
}
elseif ($registo["categoria"] -eq "alimento") {
    $resultado = "Produto alimentar"
}
else {
    $resultado = "Categoria desconhecida"
}
Write-Host "O Resultado é $resultado" -ForegroundColor Cyan