#Exercício Switch: Exibir Nome do Mês
#Enunciado: Leia um número inteiro de 1 a 12 e mostre o nome do mês correspondente. 
#Caso o número não seja válido, mostre uma mensagem de erro.
[int]$mes = Read-Host "Introduza o numero do mês (de 1 a 12)"
Switch ($mes) {
1 {$nomedomês = "Janeiro" }
2 {$nomedomês = "Fevereiro" }
3 {$nomedomês = "Março" }
4 {$nomedomês = "Abril" }
5 {$nomedomês = "Maio" }
6 {$nomedomês = "Junho" }
7 {$nomedomês = "Julho" }
8 {$nomedomês = "Agosto" }
9 {$nomedomês = "Setembro" }
10 {$nomedomês = "Outubro" }
11 {$nomedomês = "Novembro" }
12 {$nomedomês = "Dezembro" }
Default { $nomemês = "Erro: Número inválido! Por favor, repita ! Um número entre 1 e 12." } 
}
Write-Host "O numero escolhido corresponde ao mês de $nomedomês" -ForegroundColor Green