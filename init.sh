#!/bin/bash

# make sure we're starting from scratch
docker-compose down
if [[ -e howto.txt ]]; then
  rm howto.txt
fi

# prepare nginx
if [[ ! -d certs ]]; then
  mkdir certs
  openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout certs/localhost.key -out certs/localhost.crt -subj "/CN=localhost"
fi

docker-compose up -d

alias dcd='docker-compose down'
alias prune='rm -rf certs'
IP_ADDRESS=$(ip addr show eth0 | grep inet\  | sed -n 's/.*inet \([0-9\.]*\)\/.*/\1/p')

echo "WordPress is now available at
  http:$IP_ADDRESS:80" > howto.txt

echo "To kill everything, run \`dcd\` in the terminal." >> howto.txt

cat howto.txt
