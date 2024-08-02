# Apache Flink

- Link: https://www.linkedin.com/learning/apache-flink-real-time-data-engineering/real-time-processing-and-analytics
- Professor: [Kumaran Ponnambalam](https://www.linkedin.com/learning/instructors/kumaran-ponnambalam)

## Referencias
- https://flink.apache.org/
- https://medium.com/@priyankbhandia_24919/apache-flink-for-data-enrichment-6118d48de04

## O que é

Uma plataforma de processamento de dados distribuída e de código aberto, projetada para processar fluxos de dados em tempo real e em lotes.
> pode ser dimensionado horizontalmente
- fornece agendamento de trabalho
- atribuição de recursos
- processamento paralelo
- confiabilidade
- pode rodar e um single node ou em um cluster

> Criado para criar pipelines até terabytes de dados

![alt text](image.png)

Compete com o Spark, Samza, Storm e outros.

## Desafios com processmento em Stream

- Dados não limitados (Unbounded data)
    - Não é possível saber o total de registro
- Chegada de novos dados em intervalos imprevisíveis
- Dados novos não são repetíveis (resultados diferentes para a mesma consulta realizada em tempos diferentes)
- Resultados das consultas expiram rapidamente (precisam ser reexecutados)
- Gerenciamento de estado (open/close, ativo/inativo, etc)
    - ex. usuário navegando no site, precisa-se manter o controle do estado do usuário como parte da consulta de analise.
- Latencia entre os nodes de origem e os nodes de análise
    - latencia alta pode afetar a validade dos resultados
- Requisitos de recursos
    - Hardware
    - Largura de Banda Rede
    - Storage

## Por que o Flink?

> processa sem o uso de **microbatches**.

![alt text](image-1.png)















