FROM flink:1.17.1

ADD jars/flink-sql-connector-kafka-1.17.0.jar /opt/flink/usrlib/
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install apache-flink


