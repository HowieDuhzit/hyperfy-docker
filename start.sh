#!/bin/bash
/usr/sbin/nginx
cd /app && npm run dev
tail -f /dev/null 