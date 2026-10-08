#!/bin/bash

INPUT_FILE="servers.txt"

OUTPUT_FILE="server_inventory_report.csv"

echo "Hostname,Uptime,SerialNumber,ProductModel,SSH_Status,Cron_Status" > $OUTPUT_FILE

while read SERVER
do

echo "Connecting to $SERVER ..."

 
HOSTNAME=$(ssh $SERVER "hostname" 2>/dev/null)

UPTIME=$(ssh $SERVER "uptime -p" 2>/dev/null)

SERIAL=$(ssh $SERVER "sudo dmidecode -s system-serial-number" 2>/dev/null)

PRODUCT=$(ssh $SERVER "sudo dmidecode -s system-product-name" 2>/dev/null)

SSH_STATUS=$(ssh $SERVER "systemctl is-active sshd" 2>/dev/null)

CRON_STATUS=$(ssh $SERVER "systemctl is-active crond" 2>/dev/null)

echo "$HOSTNAME,$UPTIME,$SERIAL,$PRODUCT,$SSH_STATUS,$CRON_STATUS" >> $OUTPUT_FILE

done < $INPUT_FILE

echo "Report Generated Successfully"

echo "Output File: $OUTPUT_FILE"
