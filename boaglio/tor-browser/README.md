# Tor Web Browser
--------------------

![alt TOR](https://github.com/boaglio/dockerfiles/raw/master/boaglio/tor-browser/tor.png)

Tor Project: Anonymity Online - https://www.torproject.org/

--------------------

Fire up with *run-docker-tor-browser.sh*  script:


```sh
$ ./run-docker-tor-browser.sh 
----------------------------------------------
Bulding docker image
...
```

Downloaded files will be available in your local diretory */tmp/download* but you can change it:


```sh
docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v <YOUR_LOCAL_DIRECTORY>:/home/anonymous/tor-browser_en-US/Browser/Downloads  boaglio/tor-browser
...
```

Enjoy!
