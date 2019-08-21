#!/usr/bin/env bash

source ././../../curl

# No result as only exact match will work. Genre is "keyword" type.

jcurl  -XGET 127.0.0.1:9200/movies/_search?pretty -d '
 {
    "query": {
        "match": {
            "genre" : "sci"
        }
    }

   }
' | jq



jcurl  -XGET 127.0.0.1:9200/movies/_search?pretty -d '
 {
    "query": {
        "match": {
            "genre" : "Sci-Fi"
        }
    }

   }
' | jq


jcurl  -XGET 127.0.0.1:9200/movies/_search?pretty -d '
 {
    "query": {
        "match": {
            "title" : "star wars"
        }
    }

   }
' | jq

#If you want a field to be analyzed, be sure it  is a 'text field'. Otherwise put it as a keyword field.
