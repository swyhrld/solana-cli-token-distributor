#!/bin/bash
rm results.csv
IFS=","
while read f1 f2 f3 #name, address, amount
do
  f3=$(echo $f3 | tr -d '\r')
  if [ ! -z "$f2" ] #if address exists
  then
    txid=$(spl-token transfer HJbNXx2YMRxgfUJ6K4qeWtjatMK5KYQT1QnsCdDWywNv $f3 $f2 --allow-unfunded-recipient | grep "Signature: " | cut -d" " -f2)
    echo "$f1,https://solscan.io/tx/$txid" >> results.csv
  else
    echo "$f1,NIL" >> results.csv
  fi
done < Distribution.csv
