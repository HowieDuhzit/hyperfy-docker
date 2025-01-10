#!/bin/bash

# Start Nginx
nginx

# Start the Hyperfy application with PM2
#pm2 start npm --name "hyperfy" --interpreter bash -- start
RUN npm run dev 
# Keep the container running
pm2 logs 