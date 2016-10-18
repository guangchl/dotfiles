# build vim from source on CentOS with the follow support:
# - lua
# - python
# - ruby

# install necessary dependency before running this script
# yum groupinstall 'Development tools' -y
# yum install ncurses ncurses-devel wget git -y

# sudo yum install lua
# wget http://luajit.org/download/LuaJIT-2.0.4.tar.gz
# tar -xzvf LuaJIT-2.0.4.tar.gz
# cd LuaJIT-2.0.4
# make
# make install
# ln -s /usr/local/lib/libluajit-5.1.so.2.0.4 /lib/libluajit-5.1.so.2

# sudo yum install ruby

# sudo yum install ruby-devel


# in case it is built before
make distclean

# configure the build
./configure --prefix=/usr/local \
            --with-features=huge \
            --enable-pythoninterp \
            --enable-rubyinterp \
            --enable-luainterp \
            --with-lua-prefix=/usr \
            --with-luajit \
            --enable-fail-if-missing
# ./configure --prefix=/usr --with-features=huge --enable-pythoninterp --enable-rubyinterp --enable-luainterp --with-lua-prefix=/usr --with-luajit --enable-fail-if-missing

# build and install at /usr/local/bin/vim (set by configure prefix)
make VIMRUNTIMEDIR=/usr/local/share/vim/vim80
sudo make install

vim --version
