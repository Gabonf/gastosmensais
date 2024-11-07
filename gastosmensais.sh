#!/bin/bash

#arrays de categorias
gastos_fixos=(aluguel ônibus celular mercado)
gastos_variaveis=(agua credito)
cofrinhos=(viagem livro mochila emergencia lazer)

#definido os valores de gastos fixos
aluguel=666.00
onibus=150.00
celular=76.99
mercado=750.00

#calculando a soma dos valores fixos
gastos_fixos_total=$( echo "$aluguel + $onibus + $celular + $mercado" | bc )

#coleta e cálculo dos valores de gastos variáveis
gastos_v_total=0
for item in "${gastos_variaveis[@]}"; do
echo "Quais os valores dos gastos variáveis com $item"
read valor
 declare ${item}=${valor}
 gastos_v_total=$(echo "$gastos_v_total" + "$valor" | bc)
done

#coleta e soma dos valores do cofrinho
cofrinhos_total=0
for item2 in "${cofrinhos[@]}"; do
echo "Quais os valores dos gastos com cofrinho $item2"
read valor2
declare ${item2}=${valor2}
cofrinhos_total=$(echo "$cofrinhos_total" + "$valor2" | bc )
done


gasto_total=$(echo "$gastos_fixos_total + $gastos_v_total + $cofrinhos_total" | bc )
echo "O gasto total é: R$ $gasto_total"                      

























