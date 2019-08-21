#!/usr/bin/env bash


curl -H "Content-Type: application/json" -XPOST 127.0.0.1:9200/movies/_doc/109487/_update?retry_on_conflict=5 -d '

{
    "doc": {
        "title": "Interstellar typo"
    }
}

' | jq

#Result
'''
{
  "_index": "movies",
  "_type": "_doc",
  "_id": "109487",
  "_version": 6,
  "result": "updated",
  "_shards": {
    "total": 2,
    "successful": 1,
    "failed": 0
  },
  "_seq_no": 13,
  "_primary_term": 1
}

'''
