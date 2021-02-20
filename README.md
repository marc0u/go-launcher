# [go-launcher](https://github.com/marc0u/go-launcher)

A lightwidth image to launch golang apps setting timezone and port to expose. Based on scratch image.

## Usage

```
docker run -d \
  --name=myapp \
  -v $PWD:/app \
  -e TZ=America/Santiago \
  -e EXP_PORT=80 \
  -p 8080:80 \
  --restart=unless-stopped \
  marc0u/go-launcher /app/myapp
```

## Parameters

|        Parameter         | Function                     |
| :----------------------: | -----------------------------|
| `-v $PWD:/app`           | Specify the path for the App.|
| `-e TZ=America/Santiago` | Specify a timezone to use.   |
| `-e EXP_PORT=80`         | Specify port to expose.      |
