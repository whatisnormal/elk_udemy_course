#!/usr/bin/env bash

curl -H "Content-Type: application/json" -XPOST 127.0.0.1:9200/movies/_doc/500000/_update -d '
{
    "doc": {
        "title": "Interstellar"
    }
}
' | jq
