docker stop aps
docker rmi aps
docker build --rm -t aps .
docker run --rm --name aps -d -p 8888:80 aps
