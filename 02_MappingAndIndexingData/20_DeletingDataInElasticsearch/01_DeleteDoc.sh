#!/usr/bin/env bash

# Query all movies for 'Dark' term.
curl -XGET 127.0.0.1:9200/movies/_search?q=Dark

# Delete document:
curl -XDELETE 127.0.0.1:9200/movies/_doc/58559?pretty
