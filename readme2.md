1. Tipo de dia
Cria um programa que receba o nome de um dia da semana e diga se é dia útil ou fim de semana.
Exemplo:
Entrada → domingo
Saída → Fim de semana

2. Classificação de nota
Lê uma nota (0–100) e retorna uma classificação:
•	90 ou mais → Excelente
•	70–89 → Bom
•	50–69 → Suficiente
•	Abaixo de 50 → Insuficiente
Exemplo:
Entrada → Bom
Saída →  70-89

3. Tipo de pedido
Recebe um dicionário com as chaves "tipo" e "valor".
Exibe:
•	“Compra de X€” se tipo for “compra”
•	“Venda de X€” se tipo for “venda”
•	“Pedido desconhecido” caso contrário
Exemplo:
Entrada → {"tipo": "venda", "valor": 250}
Saída → Venda de 250€

4. Tipo de dado
Analisa um valor e retorna o seu tipo:
•	Número inteiro
•	Número decimal
•	String numérica
•	String textual
•	Lista
•	Tipo desconhecido
Exemplo:
Entrada → [10, 20, 30]
Saída → Lista

5. Análise de mensagem
Recebe uma mensagem e retorna:
•	“Saudação” se for “olá” ou “bom dia”
•	“Pergunta” se terminar com “?”
•	“Despedida” se contiver “tchau” ou “adeus”
•	“Mensagem genérica” caso contrário
Exemplo:des
Entrada → “Tudo bem?”
Saída → Pergunta

6. Estado do servidor
Recebe um dicionário com as chaves "status" e "tempo_resposta".
Retorna:
•	“Servidor ativo” se o status for “ok”
•	“Servidor lento” se o status for “ok” e o tempo de resposta for maior que 200 ms
•	“Servidor indisponível” se o status for “erro”
•	“Estado desconhecido” caso contrário
Exemplo:
Entrada → {"status": "ok", "tempo_resposta": 350}
Saída → Servidor lento

7. Classificação de produto
Recebe um dicionário com as chaves "categoria" e "preco".
Retorna:
•	“Produto de luxo” se categoria for “eletrônico” e preço acima de 1000
•	“Produto comum” se categoria for “eletrônico” e preço até 1000
•	“Produto alimentar” se categoria for “alimento”
•	“Categoria desconhecida” caso contrário
Exemplo:
Entrada → {"categoria": "eletrônico", "preco": 1500}
Saída → Produto de luxo

8. Operação matemática
Recebe uma operação (em texto) e dois números.
Operações válidas: "soma", "subtrai", "multiplica", "divide".
Exemplo:
Entrada →
Operação: "divide"
Número 1: 20
Número 2: 4
Saída → 5

9. Processamento de requisição
Recebe um dicionário com as chaves "metodo" e "conteudo".
Retorna:
•	“Requisição GET recebida” se o método for “GET”
•	“Requisição POST com dados válidos” se o método for “POST” e o conteúdo não estiver vazio
•	“Requisição POST sem dados” se o método for “POST” e o conteúdo estiver vazio
•	“Método não suportado” caso contrário
Exempln
Entrada → {"metodo": "POST", "conteudo": ""}
Saída → Requisição POST sem dados

10. Jogo: Pedra, Papel ou Tesoura
Cria um programa que receba duas jogadas:
•	Jogador 1
•	Jogador 2
Usa match para determinar o resultado:
•	Pedra ganha de Tesoura
•	Tesoura ganha de Papel
•	Papel ganha de Pedra
•	Se forem iguais, é Empate
Exemplo:
Entrada →
Jogador 1: pedra
Jogador 2: tesoura
Saída → Jogador 1 venceu
