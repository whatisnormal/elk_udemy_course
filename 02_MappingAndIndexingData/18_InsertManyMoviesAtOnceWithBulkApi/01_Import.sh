#!/usr/bin/env bash

# Load json file to 'movies' index in bulk form.
curl -H "Content-Type: application/json" -XPUT 127.0.0.1:9200/_bulk?pretty --data-binary @movies.json

# Query Elasticsearch
curl -XGET 127.0.0.1:9200/movies/_search?pretty
