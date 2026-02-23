#Exercicio 1 - Pedir Segundos e Responder em Horas
[int]$lersegundos = Read-Host "Coloque o numero em segudos"
$horas = [Math]::Floor($lersegundos/3600)
$segundosrestantes = $lersegundos % 3600
$minutos = [Math]::Floor($segundosrestantes / 60)
$segundosquefaltam = $segundosrestantes % 60
Write-Host "Os segundos introduzidos $lersegundos, correspondem a $horas hora(s), $minutos minuto(s) e $segundosquefaltam segundo(s)"