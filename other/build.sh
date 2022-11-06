docker stop aps
docker rmi aps
docker build --rm -t aps .
docker run --rm --name aps -d -p 4200:4200 aps ng serve --proxy-config proxy.conf.json --host 0.0.0.0 --port 4200 --disable-host-check
