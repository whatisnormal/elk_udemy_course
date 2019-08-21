#!/usr/bin/env bash

source ././../../curl


# Load json file to 'series' index in bulk form.
jcurl -XPUT 127.0.0.1:9200/_bulk?pretty --data-binary @series.json

# Query Elasticsearch
jcurl -XGET 127.0.0.1:9200/series/_search?pretty
