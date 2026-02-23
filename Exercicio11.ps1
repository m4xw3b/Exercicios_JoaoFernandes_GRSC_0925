#Tipo de dia Cria um programa que receba o nome de um dia da semana e diga se é dia útil ou fim de semana. 
#Exemplo: Entrada → domingo Saída → Fim de semana
[string]$dia = Read-Host "Introduza o dia da semana (exemplo: segunda)"
Switch ($dia) {
    "sabado"  { $diadasemana = "Fim de Semana" }
    "domingo" { $diadasemana = "Fim de Semana" }
    "segunda" { $diadasemana = "Dia Util" }
    "terça"   { $diadasemana = "Dia Util" }
    "quarta"  { $diadasemana = "Dia Util" }
    "quinta"  { $diadasemana = "Dia Util" }
    "sexta"   { $diadasemana = "Dia Util" }
    Default { $diadasemana = "Erro: Dia da semana inválido. Repita, pff." } 
}
if ($diadasemana -eq "Fim de Semana") {
    Write-Host "Resultado: Fim de Semana" -ForegroundColor Green
}
elseif ($diadasemana -eq "Dia Util") {
    Write-Host "Resultado: Dia Util" -ForegroundColor Red
}
else {
    Write-Host "Erro: Dia da semana inválido. Repita, pff." -ForegroundColor Yellow
}