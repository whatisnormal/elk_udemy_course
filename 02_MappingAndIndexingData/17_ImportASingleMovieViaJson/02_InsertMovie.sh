#!/usr/bin/env bash

# Insert content to document ID.
curl -H "Content-Type: application/json" -XPOST 127.0.0.1:9200/movies/_doc/109487 -d '
{
    "genre": ["IMAX", "Sci-Fi"],
    "title": "Interstellar",
    "year": 2014

}
'

# Search added doc.
curl -XGET 127.0.0.1:9200/movies/_search?pretty | jq

