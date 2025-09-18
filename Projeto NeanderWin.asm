;---------------------------------------------------
; Programa: Multiplicação por 3
; Autor: Jonatas José da Silva Júnior
; Data: 17/09/2025
;---------------------------------------------------

; Passo 1: Lê o número digitado
IN 0 ;Lê o número selecionado
STA NUM ;Salva o valor na memória NUM

;Zera o acumulador do resultado para a operação.
LDA ZERO ;Valor 0 será armazenado
STA RESULT ;Salvar o valor 0 para a operação

;Soma de NUM três vezes.
LDA RESULT ;Carrega o valor do resultado
ADD NUM ;Soma com o valor selecionado (no caso 0)
STA RESULT ;Armazena o resultado (0 + NUM)

LDA RESULT ;Carrega o valor do resultado
ADD NUM ;Soma com o valor selecionado (multiplicado por 2)
STA RESULT ;Armazena o resultado (soma de NUM + NUM)

LDA RESULT ;Carrega o valor do resultado
ADD NUM ;Soma com o valor de NUM + NUM
STA RESULT ;Armaxena o resultado (soma de NUM + NUM + NUM)

;Mostra o resultado.
LDA RESULT ;Carrega o resultado final que é a multiplicação de 3
OUT 0 ;Mostra o resultado no Visor

;Fim.
HLT ;Finalizar programa.

; Área de dados
NUM:    DB 0 ;Armazena o número digitado pelo usuário.
RESULT: DB 0 ;Armazena o resultado da multiplicação.
ZERO:   DB 0 ;Constante 0 usada para inicializar RESULT.
