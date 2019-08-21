#!/usr/bin/env bash

# Create Movies mapping
curl -H "Content-Type: application/json" -XPUT 127.0.0.1:9200/movies -d '
{
    "mappings": {
        "properties": {
            "year": {
                "type": "date"
            }
        }
    }
}
'

# Read inserted mapping
curl -XGET 127.0.0.1:9200/movies/_mapping

