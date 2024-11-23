
docker stop jellyfin
docker run -d \
  --name jellyfin \
  -e TZ=America/New_York \
  -p 8096:8096 \
  --restart=always \
  -v /home/architect/jellyfin/config:/config \
  -v /home/architect/jellyfin/cache:/cache \
  -v /home/architect/jellyfin/media:/media \
  jellyfin/jellyfin