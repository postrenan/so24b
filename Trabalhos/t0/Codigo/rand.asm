; Programa que adivinha o número gerado pelo dispositivo rand (ID 10)
; A memória é inicializada a partir do endereço 100
inicio  LE 101        ; Lê o número gerado pelo rand no dispositivo 10 para o acumulador (A)
        ARMM alvo    ; Armazena o número lido na posição de memória 'alvo'

        CARGI 0      ; Inicializa o acumulador com 0
loop    CARGM alvo   ; Carrega o número alvo em A
        DESVZ fim    ; Se o número for 0 (adivinhou), desvia para fim
        INCX         ; Incrementa o valor de X
        SUB alvo     ; Subtrai o valor do acumulador do valor armazenado em alvo
        DESVN loop   ; Se o valor for diferente de 0, volta para o início do loop

fim     PARA         ; Finaliza o programa

alvo    ESPACO 1     ; Espaço para armazenar o número alvo gerado pelo rand
