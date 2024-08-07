# Ref

[![Youtube](https://img.youtube.com/vi/QcHPGxy2zUM/mqdefault.jpg)](https://youtu.be/QcHPGxy2zUM)
[![Youtube](https://img.youtube.com/vi/v3rnbzLXwx8/mqdefault.jpg)](https://youtu.be/v3rnbzLXwx8)

## Arquitetura
![alt text](image.png)

- aplicação usando pyflink
- Actor system está na aplicação, job manager e no task manager.
- Network manager, trafega informações entre os nodes task manager.

## Anatomia de transformação

![alt text](image-1.png)

![alt text](image-2.png)

## APIs Flink
> A comunidade esta trabalhando forte para a camada SQL.
>
> Geralmente se trabalha no Core API, Declarative DSL e SQL.
![alt text](image-3.png)

## 

> Neste desenho, o Kafka foi retirado pois o Flink CDC faz a conexão direata com o banco (nativamente), não precisando deste caso de um Kafka. O Flink faz todo o processamento e armazena os resultados no Table Store.
>
> O Iceberg/Trino estão sendo usados para armazernar o Table Store.

![alt text](image-4.png)

# Video 2


Conceitos de Streaming **Unbounded** e **Bounded** Data.
- limitar os dados dentro de uma janela, a não ser que seja necessario processar evento por evento (janela 1?). 

![alt text](image-5.png)

## Window

Tumbling Window

![alt text](image-6.png)

Sliding Window

![alt text](image-7.png)

Cumulative Window

![alt text](image-8.png)

![alt text](image-9.png)

## Arquitetura

![alt text](image-11.png)

## Job Graph
> Acho que tem haver com a  Anatomia de transformação exibido a cima;

![alt text](image-12.png)

## Flink Api
> Consegue definir um tempo de retenção de dados e screenshots

![alt text](image-13.png)
