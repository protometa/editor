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

# install coc-rust-analyzer in expected location
ENV COC_EXT_DIR=/root/.config/coc/extensions
RUN mkdir -p $COC_EXT_DIR/coc-rust-analyzer-data && cd $COC_EXT_DIR \
  && npm install coc-rust-analyzer --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
RUN wget -O - https://github.com/rust-analyzer/rust-analyzer/releases/download/nightly/rust-analyzer-x86_64-unknown-linux-musl.gz | \
  gzip -d > $COC_EXT_DIR/coc-rust-analyzer-data/rust-analyzer && \
  chmod +x $COC_EXT_DIR/coc-rust-analyzer-data/rust-analyzer

# install plugins in separate step
COPY config/nvim/plugins.vim /root/.config/nvim/init.vim
RUN nvim +'PlugInstall' +qa --headless

# copy configs
COPY config/nvim /root/.config/nvim

VOLUME ["/root/.cargo", "/root/.cache"]
ENTRYPOINT ["nvim"]

