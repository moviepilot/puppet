About
===

This repository provides optimized scripts for installation of a Puppet agent or master on Ubuntu. It has been tested on Ubuntu Lucid 10.04 LTS, but should also run on other versions. Besides using the shell scripts as a very quick initial setup method, you can study them as a reference for a quick start.

The scripts won't ask you for confirmation. 

Howto install Puppet agent
===

If you want to take the fast lane, just run:

    $ bash < <(wget -qO - http://bit.ly/install-puppet-agent)

Howto install Puppet master
===

If you intent to setup a puppet master, run:

    $ bash < <(wget -qO - http://bit.ly/install-puppet-master)

What the scripts do
===

The scripts updates your package list and installs some needed depencies. It uses Ubunut's default Ruby, which is old and a mess, but good enough for a decent Puppet setup (as long as you don't have to consider high performance issues).

The script continues to download and install an upstream gem as the one shipped with Ubuntu is rather unusable. After gem is installed it updates itself to the most recent version.

Now puppet (and facter) are installed as gems. The install-puppet-agent-script additionally installs depencies for sqlite and some tweaks.

Credits
===

This script is inspired by the "Setting up Puppet on Ubuntu 10.04" tutorial on http://shapeshed.com/journal/setting-up-puppet-on-ubuntu-10-04/ which relies on bitfieldconsulting.com/puppet-tutorial
