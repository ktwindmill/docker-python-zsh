FROM python:3.8.5

RUN apt-get update && apt-get install --assume-yes curl zsh

RUN sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

RUN pip3 install --upgrade pip && pip3 install tensorflow

RUN apt-get install python3-opencv
