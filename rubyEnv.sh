#login: root pw:

#chmod a+x rubyEnv.sh    Run this to authorize the script
#./rubyEnv.sh            Run this to launch script


#!/bin/sh
cd ~
curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt-get install nodejs
yes Y | sudo apt-get install build-essential
yes Y | sudo apt-get install gnupg2
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable
rvm get stable --auto-dotfiles
rvm install ruby
# rvm --default use ruby-2.4.0
gem install bundler
rvm use ruby-2.4.0@rails5.1.3 --create
#This line may need changing over time to match versions.
gem install rails
apt-get install libc6-dev
wget ftp://ftp.freetds.org/pub/freetds/stable/freetds-1.00.21.tar.gz
tar -xzf freetds-1.00.21.tar.gz
cd freetds-1.00.21
./configure --prefix=/usr/local --with-tdsver=7.3
make
make install
cd ~
cd RHapi
yes Y | apt-get install libpq-dev
bundle
rails s
