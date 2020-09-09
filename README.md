# jackett-docker-healthcheck
Based on [Linuxserver/jackett](https://github.com/linuxserver/docker-jackett), just with support for Docker Healthcheck added. I needed this so that [Willfarrell/autoheal](https://github.com/willfarrell/docker-autoheal) could do the magic without manual intervention from me. Please check their respective repositoires for detailed info.

## How to install Jackett:
```docker create \
  --name=jackett \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=America/New_York \
  -e AUTO_UPDATE=true `#optional, enabled by default` \
  -v <path to data>:/config \
  -v <path to blackhole>:/downloads \
  --restart unless-stopped \
  siddhant-k/jackett-docker-healthcheck
  ```
  
## How to use it with Autoheal:
 ```
docker run -d \
    --name autoheal \
    --restart=always \
    -e AUTOHEAL_CONTAINER_LABEL=all \
    -v /var/run/docker.sock:/var/run/docker.sock \
    willfarrell/autoheal
```

That's it. 
