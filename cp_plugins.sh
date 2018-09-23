#!/bin/bash
docker run -v spigot_mc:/mc --name pluginContainer debian:buster /bin/bash
docker cp ./plugins/WorldBorder.jar pluginContainer:/mc/plugins
docker cp ./plugins/Dynmap.jar pluginContainer:/mc/plugins
docker stop pluginContainer
docker rm pluginContainer
