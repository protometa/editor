FROM alpine:edge

RUN apk -U upgrade
RUN apk add --no-cache \
  neovim \
  neovim-doc \
  git \
  fzf \
  ripgrep \
  nodejs \
  npm \
  rust \
  rust-src \
  cargo

RUN mkdir -p /root/.local/share/nvim/site/autoload && wget -O /root/.local/share/nvim/site/autoload/plug.vim \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install rust-analyzer in expected location
WORKDIR /root/.config/coc/extensions
RUN mkdir coc-rust-analyzer-data &&\
  wget -O - https://github.com/rust-analyzer/rust-analyzer/releases/download/nightly/rust-analyzer-x86_64-unknown-linux-musl.gz | \
  gzip -d > coc-rust-analyzer-data/rust-analyzer &&\
  chmod +x coc-rust-analyzer-data/rust-analyzer

# install coc extensions
RUN npm install \
  coc-rust-analyzer \
  coc-tsserver \
  coc-graphql \
  --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod

# install plugins
COPY config/nvim/plugins.vim /root/.config/nvim/init.vim
RUN nvim +'PlugInstall' +qa --headless

# copy all configs
COPY config/nvim /root/.config/nvim

WORKDIR /src
VOLUME ["/root/.cargo", "/root/.cache"]
ENTRYPOINT ["nvim"]

