#!/usr/bin/env bash

source ././../../curl

jcurl -XPUT 127.0.0.1:9200/series -d '

{
        "mappings": {
            "properties": {
                "film_to_franchise": {
                    "type": "join",
                    "relations": {"franchise": "film"}
                }
            }
        }
}
' | jq
