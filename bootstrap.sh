#!/usr/bin/env bash

apt-get update
sudo apt-get install -y vim
sudo apt-get install -y git
sudo apt-get install -y nodejs

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
sudo apt-get install -y curl
\curl -L https://get.rvm.io | bash -s stable --ruby --autolibs=enable --auto-dotfiles
source /usr/local/rvm/scripts/rvm && source /home/vagrant/.rvm/scripts/rvm
rvm install 2.2.0
rvm use --default 2.2.0
rvm gemset create rails4
rvm gemset use --default rails4

git clone https://github.com/pedrodelyra/enem-amigo.git
sudo chmod -R 777 enem-amigo/
cd enem-amigo
bundle install
