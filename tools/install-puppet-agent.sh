#!/bin/bash
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
# refresh package list
apt-get update
# bootstrap ruby env
apt-get -y install irb libopenssl-ruby libreadline-ruby rdoc ri ruby ruby-dev git-core augeas-lenses augeas-tools

# get a working gem version and update it to the most recent one
cd /usr/local/src
wget http://production.cf.rubygems.org/rubygems/rubygems-1.5.2.tgz
tar -xzf rubygems-1.5.2.tgz
cd rubygems-1.5.2
ruby setup.rb
update-alternatives --install /usr/bin/gem gem /usr/bin/gem1.8 1
gem update --system

# install puppet itself
gem install puppet -v 2.6.8 --no-ri --no-rdoc
