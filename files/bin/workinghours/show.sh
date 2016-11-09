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

# # Show total time
# TOTAL_MINUTES=$(cat "${FILE}" \
#   | cut -f4 \
#   | cut -d ' ' -f1 \
#   | awk '{sum+=$1}END{print sum}')
#
# FULL_HOURS=$((TOTAL_MINUTES / 60))
#
# echo "---"
# printf "Total time: %d:%02dh\n" ${FULL_HOURS} $((TOTAL_MINUTES - FULL_HOURS * 60))
