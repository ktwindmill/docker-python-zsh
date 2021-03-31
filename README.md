# Python image with zsh install


```
# Pull image
docker pull jcarp/python-zsh-3.8.5

# Run image
docker run --rm -it --entrypoint /bin/zsh jcarp/python-zsh-3.8.5

# Mount volume on run NOTE the folder used here '~/Repos' could be anything and
# mounted anywhere in the container
docker run -v ~/Repos:/root/Repos --rm -it --entrypoint /bin/zsh jcarp/python-zsh-3.8.5

# Build image
docker build . -t jcarp/python-zsh-3.8.5

```
