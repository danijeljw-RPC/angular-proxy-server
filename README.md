# angular-proxy-server

## Building with Docker

```zsh
docker build --rm -t aps .
```

## Serving with Docker

```
docker run --name aps -d -p 8888:80 aps
```

## Accessing Server

Open local browser to `http://localhost:8888/`
