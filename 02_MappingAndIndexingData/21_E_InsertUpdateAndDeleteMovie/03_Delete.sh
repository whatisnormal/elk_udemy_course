#!/usr/bin/env bash


curl -XDELETE 127.0.0.1:9200/movies/_doc/500000?pretty | jq
