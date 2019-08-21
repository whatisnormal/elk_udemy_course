#!/usr/bin/env bash


# Partial Update: Only updates the title field.
curl -H "Content-Type: application/json" -XPOST 127.0.0.1:9200/movies/_doc/109487/_update -d '
{
    "doc": {
        "title": "Interstellar"
    }
}
'

# Increments version Id to 3. Version 2 is marked for deletion.
curl -XGET 127.0.0.1:9200/movies/_doc/109487?pretty
