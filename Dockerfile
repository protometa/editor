FROM alpine:3

RUN apk add --no-cache \
  neovim \
  neovim-doc \
  git \
  tmux \
  nodejs

RUN mkdir -p /root/.local/share/nvim/site/autoload && wget -O /root/.local/share/nvim/site/autoload/plug.vim \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install plugins in separate step
COPY config/nvim/plugins.vim /root/.config/nvim/init.vim
RUN nvim +'PlugInstall' +qa --headless

# copy configs
COPY config/nvim /root/.config/nvim
COPY tmux.conf /root/.tmux.conf

ENTRYPOINT ["nvim"]

