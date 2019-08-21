#!/usr/bin/env bash

# Elasticsearch documents are immutable, thus any update is a new document.

# Update the whole doc.
curl -H "Content-Type: application/json" -XPUT 127.0.0.1:9200/movies/_doc/109487?pretty -d '
{
    "genres" : ["IMAX", "Sci-Fi"],
    "title": "Interstellar Foo",
    "year": 2014
}
'
## Version ID will be incremented. Version 1 will be marked for deletion.

#Check the doc
curl -XGET 127.0.0.1:9200/movies/_doc/109487?pretty


curl -H "Content-Type: application/json" -XPUT 127.0.0.1:9200/movies/_doc/109487?pretty -d '
{
    "genres" : ["IMAX", "Sci-Fi"],
    "title": "Interstellar",
    "year": 2014
}
'
