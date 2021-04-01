FROM python:3.7.0

RUN apt-get update && apt-get install --assume-yes curl zsh python3-opencv

RUN sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

RUN pip3 install --upgrade pip && pip3 install tensorflow
