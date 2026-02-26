#Jogo: Pedra, Papel ou Tesoura Cria um programa que receba duas jogadas: 
#• Jogador 1 • Jogador 2 
#Usa match para determinar o resultado: 
#• Pedra ganha de Tesoura 
#• Tesoura ganha de Papel 
#• Papel ganha de Pedra 
#• Se forem iguais, é Empate 
#Exemplo: Entrada → Jogador 1: pedra Jogador 2: tesoura Saída → Jogador 1 venceu

$cor1="Cyan"
$cor2="Yellow"
$cor3="Green"
do {
    Write-Host "(Introduza '0' no Jogador 1 para sair do programa)" -ForegroundColor $cor1
    $jogador1 = (Read-Host "Jogador 1 (pedra, papel, tesoura)")
    if ($jogador1 -eq "0") {
        Write-Host "Oh, que pena ! Já vais embora ?" -ForegroundColor $cor3
        break
    }
    $jogador2 = (Read-Host "Jogador 2 (pedra, papel, tesoura)")
switch ($jogadas) {
    "pedra-tesoura" { $resultado_do_jogo = "Jogador 1 venceu (Pedra quebra Tesoura)" }
    "tesoura-papel" { $resultado_do_jogo = "Jogador 1 venceu (Tesoura corta Papel)" }
    "papel-pedra"   { $resultado_do_jogo = "Jogador 1 venceu (Papel embrulha Pedra)" }
    "tesoura-pedra" { $resultado_do_jogo = "Jogador 2 venceu (Pedra quebra Tesoura)" }
    "papel-tesoura" { $resultado_do_jogo = "Jogador 2 venceu (Tesoura corta Papel)" }
    "pedra-papel"   { $resultado_do_jogo = "Jogador 2 venceu (Papel embrulha Pedra)" }
    { $jogador1 -eq $jogador2 } { $resultado_do_jogo = "Empate! Ambos escolheram $jogador1" }
    Default { $resultado_do_jogo = "Erro: Uma das jogadas é inválida." }
}
Write-Host $resultado_do_jogo -ForegroundColor $cor2
} while ($true)