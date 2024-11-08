# Diagnóstico do Farol de Bicicleta Movido a Dínamo com ProbLog

Este projeto utiliza ProbLog para modelar um sistema de diagnóstico de um farol de bicicleta movido a dínamo, com base em uma rede bayesiana. O objetivo é calcular a probabilidade de o dínamo mostrar tensão (**V**) quando a condição da rua é "coberta de neve" (**Str = snow_covered**).

## Implementação do Problema

Para implementar a solução, usamos a seguinte configuração de evidência e consulta em ProbLog:

```prolog
% Evidência: Str = snow_covered
evidence(str(snow_covered)).

% Consulta para a probabilidade de V ser verdadeiro dado Str = snow_covered
query(v).
```

### Descrição

    Evidência: Definimos que a condição da rua é snow_covered (coberta de neve), o que afeta o cálculo das probabilidades no modelo.
    Consulta: A consulta pede a probabilidade de que V (dínamo mostra tensão) seja verdadeiro, dada a condição da rua especificada.

## Objetivo

Este código atende à questão 1(e) do trabalho, que pede para calcular a probabilidade de V ser verdadeiro com base na evidência de que a condição da rua é "coberta de neve". A implementação segue o exemplo fornecido no tutorial do ProbLog.


