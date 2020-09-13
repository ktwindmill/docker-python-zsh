FROM python:3.8.5

RUN apt-get update && apt-get install --assume-yes curl zsh neovim

RUN pip3 install --upgrade pip && pip3 install neovim cython jedi pynvim flake8 isort black

RUN sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

RUN curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

COPY config/init.vim /root/.config/nvim/init.vim
