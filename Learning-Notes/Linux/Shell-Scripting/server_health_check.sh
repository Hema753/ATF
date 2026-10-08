#!/bin/bash

echo "===================================="
echo " Linux Server Health Check Report"
echo "===================================="

echo ""
echo "Hostname:"
hostname

echo ""
echo "System Uptime:"
uptime

echo ""
echo "Memory Usage:"
free -m

echo ""
echo "Disk Usage:"
df -h

echo ""
echo "Top 5 CPU Consuming Processes:"
ps -eo pid,user,%cpu,%mem,cmd --sort=-%cpu | head -6

echo ""
echo "Top 5 Memory Consuming Processes:"
ps -eo pid,user,%cpu,%mem,cmd --sort=-%mem | head -6

echo ""
echo "Current Logged-in Users:"
who

echo ""
echo "Network Connections:"
ss -tunap | head

echo ""
echo "Health Check Completed"

