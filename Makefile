.PHONY: help date
help:
	@echo "Usage: make [target]\n"



#################################################################################
# DOCKER Clear																	#
#################################################################################
clear-i: 
	-docker rmi $(shell docker images --filter "dangling=true" -q --no-trunc) --force

clear-c:
	-docker rm $(shell docker ps -a -q)

clear-all-c:
	-docker container rm $(shell docker container ls -aq)

clear-all-i:
	-docker rmi $(shell docker images -a -q) --force
#################################################################################

compose_up:
	docker-compose -f docker-compose.yml up -d --build
# docker-compose -f docker-compose.yml up -d


compose_down:
	docker-compose -f docker-compose.yml down


create_topic:
	-docker exec -it kafka kafka-topics --bootstrap-server localhost:9092 --create --topic compras --partitions 1 --replication-factor 1
	-docker exec -it kafka kafka-topics --bootstrap-server localhost:9092 --create --topic usuarios --partitions 1 --replication-factor 1
	make list_topics

list_topics:
	docker exec -it kafka kafka-topics --bootstrap-server localhost:9092 --list

########################
# Flink
########################
build:
	docker image build -t temp .

pull:
	docker pull flink:scala_2.12-java11


bash:
	docker exec -it jobmanager bash

sql_client:
# docker exec -it flink-sql-client /opt/sql-client.sh
	docker exec -it jobmanager ./bin/sql-client.sh

# Executar esse cmd dentro do sql-client
# set sql-client.execution.result-mode = tableau;

copy_exemples:
	docker cp jobmanager:/opt/flink/examples ./examples/


