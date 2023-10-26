#!/bin/bash

inicio=0
tempo=5

while [ $inicio -ne $tempo ]
do
    echo "O numero é $(( $RANDOM % 50 + 1))"
    echo "A estrela é $(( $RANDOM % 12 + 1))"
    ((inicio=inicio+1))
done