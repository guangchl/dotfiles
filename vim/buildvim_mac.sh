# build vim with lua support
# brew install lua before running this script

# in case it is built before
make distclean

# configure the build
./configure --enable-luainterp \
            --with-lua-prefix=/usr/local

# build and install at /usr/local/bin/vim
make
sudo make install
