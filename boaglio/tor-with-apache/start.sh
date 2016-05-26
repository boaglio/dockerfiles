#!/bin/bash

service tor start
service apache2 start
echo -------------------------------------------------
echo -  Tor URL 
cat /var/lib/tor/http/hostname 
echo -------------------------------------------------
echo ARM monitor...
echo -------------------------------------------------
sleep 20
arm