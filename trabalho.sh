#!/bin/bash

inum=1
iest=1
numero=6      # numero = número de números (no caso, 5 números)
estrela=3     # estrela = número de estrelas (no caso, 2 estrelas)
listan=()
listae=()

loop(){
echo "Números aleatórios para o Euromilhões!" 
        
    while [ $inum -ne $numero ]; do
        numrand="$(( $RANDOM % 50 + 1))"
        if [[ ! " ${listan[*]} " =~ " $numrand " ]]; then
            listan+=($numrand)
            ((inum=inum+1))
            echo "O numero $inum é: $numrand"
        fi
    done

    while [ $iest -ne $estrela ]; do
        estrand="$(( $RANDOM % 12 + 1))"
        if [[ ! " ${listae[*]} " =~ " $estrand " ]]; then
            listae+=($estrand)
            ((iest=iest+1))
            echo "O numero $iest é: $estrand"
        fi    
    done
}
loop

pergunta(){
while true; do
    echo "Deseja voltar a executar o script? (s/n)"
    read resposta
        if [ "$resposta" = "s" ] || [ "$resposta" = "S" ]; then 
                clear
                inum=1
                iest=1
                listan=()
                listae=()
                loop
        elif [ "$resposta" = "n" ] || [ "$resposta" = "N" ]; then 
            clear
            echo "Obrigado por executar o script e boa sorte no jogo!"
            exit
        else
           clear
           echo "Resposta nao aceite tem de inserir 's' ou 'n'" 
           pergunta
        fi
done
}
pergunta