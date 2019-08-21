#!/usr/bin/env bash

# Insert content to document ID.
curl -H "Content-Type: application/json" -XPOST 127.0.0.1:9200/movies/_doc/500000 -d '
{
    "genre": ["Terror", "Sci-Fi"],
    "title": "Cannibal Holocaust",
    "year": 1960

}
' | jq
