# Server Health Check Script

## Purpose

This script performs a quick health check of a Linux server.

## Script

server_health_check.sh
 
## Sample Output

```text
====================================
Linux Server Health Check Report
====================================

Hostname:
prod-app-01
 
System Uptime:
10:45:23 up 125 days

Memory Usage:
total used free

Disk Usage:
/dev/sda1 100G 60G 40G 60%
 
Health Check Completed
```
## How To Run
```bash
chmod +x server_health_check.sh

./server_health_check.sh

## Real-Time Usage

### Daily Health Check

Used by administrators to verify server health.

### Performance Issue

Used when users report application slowness.

### Production Incident

Used to quickly collect server information before troubleshooting.

## Benefits

- Quick server health assessment
- Faster troubleshooting
59
- Reduced manual effort
