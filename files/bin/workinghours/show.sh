#!/bin/bash

SEARCH_DATE=$1
DIR=~/bin/workinghours

if [ -z "$SEARCH_DATE" ]; then
  SEARCH_DATE=$(date +%Y-%m)
fi

FILE="${DIR}/${SEARCH_DATE}.log"

if [ ! -e "${FILE}" ]; then
  echo "Error: Logfile ${FILE} not found."
  exit 1
fi

# Show all entries
cat "${FILE}"
