

cd boaglio/tor-with-apache

echo ----------------------------------------------
echo    Bulding docker image
echo ----------------------------------------------

docker build -t=boaglio/tor-with-apache .

echo ----------------------------------------------
echo  Firing up docker image
echo ----------------------------------------------

docker run -i -t boaglio/tor-with-apache
