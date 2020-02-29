#!/bin/bash

DOCKER_CMD="echo __docker "
echo "Are you sure you actually want to run this, running it again could wipe out the archive?"

if [[ $1 == "FORCE" ]]; then
	echo "Last chance"
	read -p "Are you really sure? (y/n)" -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		    # do dangerous stuff
		DOCKER_CMD="docker"
	fi
else
	echo "If so use '$0 FORCE' instead"
	echo "running in demo mode"
	echo ""
	echo ""

fi

$DOCKER_CMD login

$DOCKER_CMD build --tag lancachenet/steamcachenet:latest .

for container in ubuntu ubuntu-nginx generic monolithic sniproxy steamcache-dns steamcache-authcode steamcache-site-license steamcache; do
	imagename="steamcache/${container}"
	echo "Archiving $imagename"
	$DOCKER_CMD pull $imagename:latest
	$DOCKER_CMD tag $imagename:latest $imagename:superceded
	$DOCKER_CMD push $imagename:superceded
	$DOCKER_CMD rmi $imagename:latest
	$DOCKER_CMD tag lancachenet/steamcachenet:latest $imagename:latest
	$DOCKER_CMD push $imagename:latest
	echo ""
done

echo "you probably want to run \`$DOCKER_CMD image prune -a\` now"
