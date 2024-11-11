#!/bin/bash

echo "$(date --utc +%FT%TZ): Deploying developments into production."

echo "$(date --utc +%FT%TZ): Stoping gunicorn server."

sudo systemctl stop gunicorn

echo "$(date --utc +%FT%TZ): Merging changes."

git merge

sleep 5

echo "$(date --utc +%FT%TZ): Starting gunicorn server."

sudo systemctl start gunicorn