# Tor + Apache 
--------------------

Tor Project: Anonymity Online - https://www.torproject.org/

The Number One HTTP Server On The Internet - https://httpd.apache.org/

anonymizing relay monitor (arm) - https://www.atagar.com/arm/

--------------------

Fire up with *run-docker-tor-with-apache.sh*  script:


```sh
$ ./sobe-docker-tor-with-apache.sh 
----------------------------------------------
Bulding docker image
----------------------------------------------
Sending build context to Docker daemon 34.82 kB
Step 1 : FROM ubuntu
Step 2 : MAINTAINER Fernando Boaglio <fernando@boaglio.com>
...
Step 15 : CMD /opt/start.sh
 ---> Running in e6361e6658e1
 ---> 86beeaecee70
Removing intermediate container e6361e6658e1
Successfully built 86beeaecee70
----------------------------------------------
Firing up docker image
----------------------------------------------
 * Starting tor daemon...                                                                                                   
 * Starting Apache httpd web server apache2                                                                         
-------------------------------------------------
- Tor URL
ntaradphwybgyi5t.onion
-------------------------------------------------
ARM monitor...
-------------------------------------------------

```


You can use your *Tor Browser* to access the generated URL :

![alt Tor Browser](https://github.com/boaglio/dockerfiles/raw/master/boaglio/tor-with-apache/tor1.png)

And then monitor the traffic with *ARM*:

![alt ARM](https://github.com/boaglio/dockerfiles/raw/master/boaglio/tor-with-apache/arm.png)


