
docker stop jellyfin
docker run -d \
  --name jellyfin \
# --gpus all \
#  -e NVIDIA_VISIBLE_DEVICES=all \
# -e NVIDIA_DRIVER_CAPABILITIES=compute,video,utility \
  -e TZ=America/New_York \
  -p 8096:8096 \
  --restart=always \
  -v /home/architect/jellyfin/config:/config \
  -v /home/architect/jellyfin/cache:/cache \
  -v /home/architect/jellyfin/media:/media \
  jellyfin/jellyfin
