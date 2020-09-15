# Dev Docker Image

Personal docker dev image with neovim and zsh install. Includes jdk and scala


```
# Pull image
docker pull jcarp/dev-nvim-zsh

# Run image
docker run --rm -it --entrypoint /bin/zsh jcarp/dev-nvim-zsh


# Mount volume on run
docker run -v ~/Repos:/root/Repos --rm -it --entrypoint /bin/zsh jcarp/dev-nvim-zsh

# Forward clipboard from host to container (best saved as an alias)
# REQUIRED: setup xhost local connections
xhost local:root
# start container
docker run --rm -it -e DISPLAY -v ~/Repos:/root/Repos -v  /tmp/.X11-unix:/tmp/.X11-unix --entrypoint /bin/zsh jcarp/dev-nvim-zsh

## Dev

```
# Build image
docker build . -t jcarp/dev-nvim-zsh

# Push image
docker push jcarp/dev-nvim-zsh
```
