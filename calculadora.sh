#!/bin/bash

# Início do loop infinito
while true; do
    # Solicita o primeiro número ao usuário
    echo "Digite o primeiro número:"
    read numero1

    # Verifica se o valor digitado é um número válido
    if ! [[ "$numero1" =~ ^-?[0-9]+$ ]]; then
        echo "Por favor, digite um número válido!"
        continue
    fi

    # Solicita a operação ao usuário
    echo "Digite a operação (+, -, *, /):"
    read operacao

    # Solicita o segundo número ao usuário
    echo "Digite o segundo número:"
    read numero2

    # Verifica se o segundo número é válido
    if ! [[ "$numero2" =~ ^-?[0-9]+$ ]]; then
        echo "Por favor, digite um número válido!"
        continue
    fi

    # Realiza a operação com base na escolha do usuário
    case $operacao in
        +) resultado=$(($numero1 + $numero2)) ;;
        -) resultado=$(($numero1 - $numero2)) ;;
        '*') resultado=$(($numero1 * $numero2)) ;;
        /) 
            if [ "$numero2" -eq 0 ]; then
                echo "Erro: divisão por zero não é permitida!"
                continue
            else
                resultado=$(($numero1 / $numero2))
            fi
            ;;
        *) resultado="Operação inválida" ;;
    esac

    # Exibe o resultado
    echo "$numero1 $operacao $numero2 = $resultado"

    # Pergunta se o usuário deseja continuar ou sair
    echo "Digite 'sair' para terminar ou pressione Enter para continuar:"
    read final
    if [[ "$final" == "sair" ]]; then
        echo "Encerrando a calculadora. Até mais!"
        break
    fi
done
