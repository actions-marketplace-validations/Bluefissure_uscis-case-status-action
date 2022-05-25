#!/bin/bash

if [ -z "$INPUT_RECEIPT_NUMBER" ]; then
  echo '::error::Required Receipt Number'
  exit 1
fi

echo "Running case checker"
python $GITHUB_ACTION_REPOSITORY/main.py --receipt-number "$INPUT_RECEIPT_NUMBER"
