docker run \
    --rm \
    -it \
    --gpus all \
    --user ubuntu \
    --network=host \
    --ipc=host \
    -v $PWD/psd_ws:/home/ubuntu/psd_ws \
    -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
    --env=DISPLAY \
    -v /dev:/dev \
    --device-cgroup-rule="c *:* rmw" \
    --name psd_container \
    psd_noble_jazzy