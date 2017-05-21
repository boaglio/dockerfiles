#!/bin/bash

export APP_DOWNLOAD=/tmp/download

cd boaglio/tor-browser

echo ----------------------------------------------
echo    Bulding docker image
echo ----------------------------------------------

docker build -t=boaglio/tor-browser .

echo ----------------------------------------------
echo  Firing up docker image
echo ----------------------------------------------

rm -rf $APP_DOWNLOAD 2>/dev/null 
mkdir $APP_DOWNLOAD 2>/dev/null

docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $APP_DOWNLOAD:/home/anonymous/tor-browser_en-US/Browser/Downloads  boaglio/tor-browser
