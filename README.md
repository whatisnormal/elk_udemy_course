https://www.udemy.com/elasticsearch-7-and-elastic-stack


```bash

docker pull docker.elastic.co/elasticsearch/elasticsearch:7.3.0

docker run -d -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" --name elasticsearch -v $(PWD)/volumes/elasticsearch:/usr/share/elasticsearch/data:rw docker.elastic.co/elasticsearch/elasticsearch:7.3.0 
```
