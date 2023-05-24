# curl -fsSL https://packages.redis.io/gpg -y | gpg --dearmor -o /usr/share/keyrings/redis-archive-keyring.gpg -y

# echo "deb [signed-by=/usr/share/keyrings/redis-archive-keyring.gpg] https://packages.redis.io/deb $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/redis.list

apt-get update
apt-get install redis

sed -i "s|bind 127.0.0.1|#bind 127.0.0.1|g" /etc/redis/redis.conf && \
sed -i "s|# maxmemory <bytes>|maxmemory 2mb|g" /etc/redis/redis.conf && \
sed -i "s|# maxmemory-policy noeviction|maxmemory-policy allkeys-lru|g" /etc/redis/redis.conf

redis-server --protected-mode no



