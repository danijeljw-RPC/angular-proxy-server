# angular-proxy-server

## Building with Docker

```zsh
docker build --rm -t aps .
```

## Serving with Docker

```
docker run --name aps -d -p 4200:4200 aps ng serve --proxy-config proxy.conf.json --host 0.0.0.0 --port 4200 --disable-host-check
```

## Accessing Server

Open local browser to `http://localhost:4200/`
