#Exercício 7: Calcular a Média de Notas com Pesos
#Enunciado: O sistema de avaliação de uma disciplina tem três provas com pesos diferentes.
#A primeira tem peso 2, a segunda tem peso 3, e a terceira tem peso 5.
#Crie um programa para calcular a média final de um aluno e mostrar se ele está APROVADO (nota >= 6) ou 
#REPROVADO (nota < 6).
[float]$nota1 = Read-Host "Qual o valor da primeira nota de avaliação (de 0 a 10) - peso 2"
[float]$nota2 = Read-Host "Qual o valor da primeira nota de avaliação (de 0 a 10) - peso 3"
[float]$nota3 = Read-Host "Qual o valor da primeira nota de avaliação (de 0 a 10) - peso 5"
$aval1=0
$aval2=0
$aval3=0
[int]$aval1 = $nota1*2
[int]$aval2 = $nota2*3
[int]$aval3 = $nota3*5
if ((($aval1+$aval2+$aval3)/10) -ge 6 ) {
    Write-Host "ALUNO APROVADO" -ForegroundColor Green
}else{
    Write-Host "ALUNO REPROVADO" -ForegroundColor Red
}