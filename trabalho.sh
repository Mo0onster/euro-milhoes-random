#!/bin/bash

inum=1
iest=1
numero=6      # numero = número de números (no caso, 5 números)
estrela=3     # estrela = número de estrelas (no caso, 2 estrelas)

loop(){
    echo "Números aleatórios para o Euromilhões!"
        while [ $inum -ne $numero ]; do
            echo "O número $inum é: $(( $RANDOM % 50 + 1))"
            ((inum=inum+1))
        done

        while [ $iest -ne $estrela ]; do
            echo "A estrela $iest é: $(( $RANDOM % 12 + 1))"
            ((iest=iest+1))
        done
} 

loop

pergunta(){
while true; do
    echo "Deseja voltar a executar o script? (s/n)"
    read resposta
        if [ "$resposta" = "s" ] || [ "$resposta" = "S" ]; then 
                inum=1
                iest=1
                loop
        elif [ "$resposta" = "n" ] || [ "$resposta" = "N" ]; then 
            echo "Obrigado por executar o script e boa sorte no jogo!"
            exit
        else
           echo "Resposta nao aceite tem de inserir 's' ou 'n'" 
           pergunta
        fi
done
}

pergunta