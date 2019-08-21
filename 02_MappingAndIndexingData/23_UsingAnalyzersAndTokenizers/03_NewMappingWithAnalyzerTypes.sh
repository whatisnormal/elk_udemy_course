#!/usr/bin/env bash

source ././../../curl


#New mapping with keyword type field and 'text' field to apply analyzers,
jcurl -XPUT 127.0.0.1:9200/movies -d '
{
    "mappings": {
        "properties": {
            "id" : {"type": "integer"},
            "year" : {"type": "date"},
            "genre" : {"type": "keyword"},
            "title" : {"type": "text", "analyzer": "english"}
        }
    }
}
' | jq
