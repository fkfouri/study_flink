# FROM flink:1.17.1
FROM flink:scala_2.12-java11

RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install apache-flink
# ADD jars/flink-sql-connector-kafka-1.17.0.jar /opt/flink/usrlib/
ADD jars/flink-sql-connector-kafka_2.11-1.14.4.jar /opt/flink/usrlib/


