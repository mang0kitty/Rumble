#!/bin/sh

if ["$AGENT_URL" == ""]; then
  echo "You must provide an AGENT_URL environment variable when starting this container."
  exit 1
fi

export RUMBLE_HOSTNAME="$(cat /rumble/hostname)"

wget -O rumble ${AGENT_URL} 
chmod +x rumble

./rumble $@