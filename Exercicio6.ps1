#Exercício 6: Desconto de Compra
#Enunciado: Uma loja oferece descontos de acordo com o valor da compra: 10% para compras até 200,00€. 
#15% para compras entre 200,01€ e 500,00€. 20% para compras acima de 500,00€. 
#Desenvolva um Programa que leia o nome do cliente e o valor da compra e mostre o valor do desconto e 
#o valor total a pagar.

[string]$nome = Read-Host "Introduza o nome do cliente "
[float]$valorcompra = Read-Host "Introduza o valor da compra (exemplo : 200.00"
$desconto = 0
$valorapagar = 0
if ($valorcompra -le 200) {
    $desconto =$valorcompra * 0.10} 
elseif ($valorcompra -le 500.00) {
        $desconto =$valorcompra * 0.15
} 
else {
        $desconto=$valorcompra * 0.20
}
$valorapagar = $valorcompra - $desconto
Write-Host "Cliente: $nome"
Write-Host "Valor da Compra: $valorcompra €"
Write-Host "Valor do Desconto: $desconto €"
Write-Host "Total a Pagar: $valorapagar €"
