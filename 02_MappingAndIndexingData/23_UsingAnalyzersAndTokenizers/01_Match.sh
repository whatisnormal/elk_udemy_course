#!/usr/bin/env bash

source ././../../curl

jcurl  -XGET 127.0.0.1:9200/movies/_search?pretty -d '
 {
    "query": {
        "match": {
            "title" : "Star Trek"
        }
    }

   }
' | jq


# Result - Both movies matched. Start Trek had a max score as it matched star trek. Star Wars only matched "Star"
'''
{
  "took": 2,
  "timed_out": false,
  "_shards": {
    "total": 1,
    "successful": 1,
    "skipped": 0,
    "failed": 0
  },
  "hits": {
    "total": {
      "value": 2,
      "relation": "eq"
    },
    "max_score": 2.4749134,
    "hits": [
      {
        "_index": "movies",
        "_type": "_doc",
        "_id": "135569",
        "_score": 2.4749134,
        "_source": {
          "id": "135569",
          "title": "Star Trek Beyond",
          "year": 2016,
          "genre": [
            "Action",
            "Adventure",
            "Sci-Fi"
          ]
        }
      },
      {
        "_index": "movies",
        "_type": "_doc",
        "_id": "122886",
        "_score": 0.65114933,
        "_source": {
          "id": "122886",
          "title": "Star Wars: Episode VII - The Force Awakens",
          "year": 2015,
          "genre": [
            "Action",
            "Adventure",
            "Fantasy",
            "Sci-Fi",
            "IMAX"
          ]
        }
      }
    ]
  }
}

'''
