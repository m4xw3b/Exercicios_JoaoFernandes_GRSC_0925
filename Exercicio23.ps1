#Ler a nota de 10 alunos, calcular a media e mostrar essa média.
$notas=0
$grupodenotas=0

for ($i = 1; $i -le 10; $i++) {
    [float]$notas = Read-Host "Introduza a nota do aluno nº $i"
    $grupodenotas += $notas
}
$media = $grupodenotas / 10
Write-Host "A média das notas dos 10 alunos é $media"