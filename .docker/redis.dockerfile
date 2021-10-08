FROM redis:latest


COPY redis/redis.conf /usr/local/etc/redis/redis.conf

CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]

EXPOSE 6379
