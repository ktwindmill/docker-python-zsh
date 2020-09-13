FROM python:3.8.5

RUN apt-get update && apt-get install --assume-yes curl zsh neovim

RUN pip3 install --upgrade pip && pip3 install neovim cython jedi pynvim flake8 isort black

RUN sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

RUN curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

COPY config/init.vim /root/.config/nvim/init.vim

# Java setup
RUN apt-get update && apt-get upgrade && apt-get install default-jdk --assume-yes

# Scala setup
RUN wget www.scala-lang.org/files/archive/scala-2.13.3.deb && dpkg -i scala*.deb

# SBT setup
RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823

RUN apt-get update && apt-get install sbt --assume-yes
