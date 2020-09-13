# Dev Docker Image

Personal docker dev image with neovim and zsh install


```
# Build image
docker build . -t dev-image

# Run image
docker run --rm -it --entrypoint /bin/zsh dev-image

# Mount volume on run
docker run -v ~/Repos:/root/Repos --rm -it --entrypoint /bin/zsh dev-image

# Install nvim plugins
nvim

# Interactive nvim gui
:PlugInstall
```
