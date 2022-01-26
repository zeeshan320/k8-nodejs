#!/bin/sh

#ENV_NAME=$1

echo "ENV is $ENV_NAME"

if [ "$ENV_NAME" = "prod" ];
then
	npm start
elif [ "$ENV_NAME" = "qa" ];
then
	npm restart
else
	npm test
fi
