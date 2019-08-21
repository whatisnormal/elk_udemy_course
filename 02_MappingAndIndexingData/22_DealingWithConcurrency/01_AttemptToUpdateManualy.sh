#!/usr/bin/env bash

curl -XGET 127.0.0.1:9200/movies/_doc/109487?pretty | jq

# Seq. no + Primary term defines the revision.

# Updates the document if seq = 6 and primary term = 1. Otherwise fails.
curl -H "Content-Type: application/json" -XPUT "127.0.0.1:9200/movies/_doc/109487?if_seq_no=6&if_primary_term=1" -d '
{
    "genres": ["IMAX", "Sci-Fi"],
    "title": "Interstellar foo",
    "year": 2014
}
' | jq

#Result
'''
{
  "_index": "movies",
  "_type": "_doc",
  "_id": "109487",
  "_version": 4,
  "result": "updated",
  "_shards": {
    "total": 2,
    "successful": 1,
    "failed": 0
  },
  "_seq_no": 11,
  "_primary_term": 1
}
'''
