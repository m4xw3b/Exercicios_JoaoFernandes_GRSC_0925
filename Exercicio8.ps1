#Exercício 8: Calcular a Média de 10 Notas e informar notas iguais ou acima da media
#Enunciado: Crie um programa que leia a nota de 10 alunos (notas de 0 a 20), calcule a média das notas e mostre a média.
#Além disso, informe quantos alunos ficaram com a nota igual ou acima da média.
[float[]]$notas = @()
for ($i = 1; $i -le 10; $i++) {
    $valor = Read-Host "Digite a nota do aluno $i (0-20)"
    $notas += [float]$valor
}
$soma = 0
foreach ($n in $notas) {
    $soma = $soma + $n
}
$media = $soma / $notas.Count
$contador = 0
foreach ($n in $notas) {
    if ($n -ge $media) {
        $contador = $contador + 1
    }
}
Write-Host "Média da Turma: $media"
Write-Host "Alunos com nota igual ou superior à média da turma: $contador"