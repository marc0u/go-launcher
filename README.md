# [go-launcher](https://github.com/marc0u/go-launcher)

A lightwidth image to launch golang apps setting timezone and port to expose.

## Usage

```
docker run -d \
  --name=myapp \
  -v $PWD:/app \
  -e TZ=America/Santiago \
  -e APPNAME="myapp" \
  -e EXP_PORT=80 \
  -p 8080:80 \
  --restart=unless-stopped \
  marc0u/go-launcher
```

## Parameters

|        Parameter         | Function                   |
| :----------------------: | -------------------------- |
|        `-v /app`         | Local path for the App.    |
| `-e TZ=America/Santiago` | Specify a timezone to use. |
|   `-e APPNAME="myapp"`   | Specify App's name.        |
|     `-e EXP_PORT=80`     | Specify port to expose.    |
