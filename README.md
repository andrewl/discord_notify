Discord Notify
============

Why?
----
This simple script enables you to post a message into discord from the command line without the need to install a Ruby, Node, PHP application with their boatload of dependencies. 

Install
-------

1. Create an Incoming Webhook on your Discord channel.

2. (Optional) Copy discord_notify.sh to your path.

Usage
-----

Set the environment variable DISCORD_WEBHOOK_URL to the url of your Incoming Webhook. Optionally set the environment variable DISCORD_USERNAME to the username to post as.

The message to send is passed as the parameter to the script.

Example
-------

Sending "Hello, Discord"

    DISCORD_WEBHOOK_URL="https://discordapp.com/api/webhooks/123456/abcdef" discord_notify.sh "Hello, Discord"


Sending the amount of free space on the boot partition

    FREE_SPACE=`df -h --output=used /boot | tail -n 1` DISCORD_WEBHOOK_URL="https://discordapp.com/api/webhooks/123456/abcdef" discord_notify.sh "Boot partition has $FREESPACE free space"

