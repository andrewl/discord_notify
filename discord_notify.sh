#!/bin/bash

DISCORD_USERNAME=${DISCORD_USERNAME:-"Discord CLI Notifier "}
DISCORD_WEBHOOK_URL=${DISCORD_WEBHOOK_URL:-""}

if [ -z "$DISCORD_WEBHOOK_URL" ]; then
  echo "You must define DISCORD_WEBHOOK_URL in order to post a message";
  exit 1;
fi

curl -X POST --data-urlencode 'payload_json={"username": "'"$DISCORD_USERNAME"'", "content":"'"$1"'"}' $DISCORD_WEBHOOK_URL
