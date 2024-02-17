# Building & publishing docker image

```bash
docker buildx build --no-cache --platform linux/amd64,linux/arm64 -t tag ./ --push
docker images
docker tag imageID tag
docker push tag
```
