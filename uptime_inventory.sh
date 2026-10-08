#!/bin/bash
INPUT=servers.txt

OUTPUT=server_inventory.csv

echo "Hostname,Uptime,SerialNumber,ProductID" > $OUTPUT
for SERVER in $(cat $INPUT)

do
UPTIME=$(ssh $SERVER "uptime -p" 2>/dev/null)

SERIAL=$(ssh $SERVER "dmidecode -s system-serial-number" 2>/dev/null)

PRODUCT=$(ssh $SERVER "dmidecode -s system-product-name" 2>/dev/null)

echo "$SERVER,$UPTIME,$SERIAL,$PRODUCT" >> $OUTPUT

done

echo "Inventory Generated: $OUTPUT"
