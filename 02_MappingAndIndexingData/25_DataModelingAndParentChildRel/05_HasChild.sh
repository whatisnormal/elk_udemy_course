#!/usr/bin/env bash

source ././../../curl

jcurl  -XGET 127.0.0.1:9200/series/_search?pretty -d '
 {
    "query": {
        "has_child": {
            "type" : "film",
            "query": {
                "match": {
                    "title": "The Force Awakens"
                }
            }
        }
    }

   }
' | jq
