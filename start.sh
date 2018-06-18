#!/bin/sh
docker run -d \
--name nginx \
-v $(pwd)/nginx.conf:/etc/nginx/nginx.conf \
-v $(pwd)/404.html:/var/www/html/errors/404.html \
-v $(pwd)/50x.html:/var/www/html/errors/50x.html \
-v $(pwd)/block.html:/var/www/html/errors/block.html \
-p 8000:80 nginx