# Python image with zsh install


```
# Pull image
docker pull jcarp/python-zsh-3.8.5

# Run image
docker run --rm -it --entrypoint /bin/zsh jcarp/dev-nvim-zsh


# Mount volume on run
docker run -v ~/Repos:/root/Repos --rm -it --entrypoint /bin/zsh jcarp/dev-nvim-zsh

# Build image
docker build . -t jcarp/python-zsh-3.8.5

```
