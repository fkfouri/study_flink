# Apache Flink - Glossario

- **Apache Flink**: Uma plataforma de processamento de dados distribuída e de código aberto, projetada para processar fluxos de dados em tempo real e em lotes.
- **Batch Processing (Processamento em Lote)**: Processamento de grandes volumes de dados agrupados (lotes) de uma só vez.
- **Checkpointing (Pontos de Verificação)**: Mecanismo de recuperação de falhas do Flink que salva periodicamente o estado do aplicativo para garantir a consistência dos dados.
- **Cluster**: Um conjunto de máquinas que trabalham juntas para executar trabalhos do Flink.
- **Connector (Conector)**: Componentes que permitem ao Flink interagir com sistemas externos, como Kafka, HDFS, JDBC, etc.
- **DataSet API**: API do Flink usada para processar dados em lote.
- **DataStream API**: API do Flink usada para processar fluxos de dados.
- **Event Time (Tempo de Evento)**: O timestamp associado a cada evento, representando o momento em que o evento ocorreu.
- **Execution Graph**: Representação detalhada de um trabalho do Flink durante a execução, incluindo tarefas e seus estados.
- **Flink Runtime**: O ambiente de execução do Flink responsável por gerenciar a distribuição e execução dos trabalhos.
- **Flink SQL**: Interface SQL do Flink para consulta e análise de fluxos de dados.
- **Job (Trabalho)**: Uma unidade de processamento enviada para o cluster do Flink, composta por um ou mais operadores.
- **Job Graph**: Representação interna de um trabalho do Flink, descrevendo a topologia de operadores e suas conexões.
- **Job Manager**: Componente do Flink responsável por coordenar a execução de um trabalho, gerenciando recursos e supervisionando tarefas.
- **Operator (Operador)**: Uma função ou transformação aplicada aos dados, como map, filter, window, etc.
- **Parallelism (Paralelismo)**: O número de sub-tarefas em que uma tarefa pode ser dividida, permitindo a execução simultânea.
- **Processing Time (Tempo de Processamento)**: O timestamp no momento em que um evento é processado pelo sistema.
- **Queryable State (Estado Consultável)**: Funcionalidade que permite consultar o estado de um aplicativo Flink em execução.
- **Savepoint**: Um snapshot manual do estado de um trabalho do Flink que pode ser usado para reiniciar o trabalho a partir de um estado consistente.
- **Sink**: Componente do Flink que escreve dados processados para um destino externo, como um sistema de arquivos ou um banco de dados.
- **Source (Fonte)**: Componente do Flink que lê dados de uma origem externa, como um banco de dados ou uma fila de mensagens.
- **State (Estado)**: Dados mantidos pelos operadores do Flink durante o processamento de fluxos de dados.
- **State Backend (Backend de Estado)**: Subsistema no Flink que gerencia a persistência do estado, como RocksDB ou memória.
- **Stream Processing (Processamento de Fluxo)**: Processamento contínuo de dados em movimento, onde os dados são processados imediatamente à medida que chegam.
- **Task (Tarefa)**: A unidade mais básica de execução dentro de um trabalho do Flink.
- **Task Manager**: Componente do Flink que executa tarefas individuais em um cluster, gerenciando threads e memória.
- **Transformation (Transformação)**: Operações aplicadas aos dados dentro de um fluxo, como map, flatMap, filter, etc.
- **Watermark**: Sinal utilizado para indicar o progresso do tempo de evento em um fluxo de dados, ajudando a gerenciar a latência e a precisão no processamento de janelas.
- **Windowing (Janelamento)**: Técnica para agrupar fluxos de dados em intervalos de tempo ou contagem de eventos para processamento.


