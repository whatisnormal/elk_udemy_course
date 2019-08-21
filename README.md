
Contains the exercises for the Udemy curse [for Elasticsearch 7](ttps://www.udemy.com/elasticsearch-7-and-elastic-stack)

## Pre-requirements

1. Load elasticsearch and run it locally.

```bash

docker pull docker.elastic.co/elasticsearch/elasticsearch:7.3.0

docker run -d -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" --name elasticsearch -v $(PWD)/volumes/elasticsearch:/usr/share/elasticsearch/data:rw docker.elastic.co/elasticsearch/elasticsearch:7.3.0 
```
