# build vim with lua support
make distclean                 # in case it is built before
./configure --with-lua-prefix
make
sudo make install              # at /usr/local/bin/vim
