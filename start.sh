#!/bin/bash

# Start Nginx
nginx

# Start the Hyperfy application
cd /app && npm run dev

# Keep the container running
tail -f /dev/null 