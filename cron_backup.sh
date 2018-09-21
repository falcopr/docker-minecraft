#!/bin/bash
cd "${0%/*}"
docker-compose -p spigot down
./backup.sh
docker-compose -p spigot up -d
