#!/usr/bin/env bash

source ././../../curl

jcurl  -XGET 127.0.0.1:9200/series/_search?pretty -d '
 {
    "query": {
        "has_parent": {
            "parent_type" : "franchise",
            "query": {
                "match": {
                    "title": "Star Wars"
                }
            }
        }
    }

   }
' | jq
