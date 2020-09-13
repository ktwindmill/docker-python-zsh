# Dev Docker Image

Personal docker dev image with neovim and zsh install. Includes jdk and scala


```
# Pull image
docker pull jcarp/dev-nvim-zsh

# Run image
docker run --rm -it --entrypoint /bin/zsh jcarp/dev-nvim-zsh


# Mount volume on run
docker run -v ~/Repos:/root/Repos --rm -it --entrypoint /bin/zsh jcarp/dev-nvim-zsh


# Install nvim plugins
nvim

# Interactive nvim gui
:PlugInstall
```

## Dev

```
# Build image
docker build . -t jcarp/dev-nvim-zsh

# Push image
docker push jcarp/dev-nvim-zsh
```
