image_name=docker.elastic.co/elasticsearch/elasticsearch:7.3.0
container_name=elasticsearch

all:
	echo hello
bootstrap:
	docker run -d -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" --name elasticsearch -v $(PWD)/volumes/elasticsearch:/usr/share/elasticsearch/data:rw $(image_name) && sleep 5 && docker logs -f --tail 10 elasticsearch
#DOCKER=docker
start:
	docker container start elasticsearch && docker container ls --all
stop:
	docker container stop $(container_name) && docker container rm $(container_name) && docker container ls --all

logs:
	docker logs -f --tail 20  $(container_name)

cluster-health:
	curl -XGET localhost:9200/_cluster/health?pretty

rm-data:
	rm -rfv volumes/elasticsearch/*
