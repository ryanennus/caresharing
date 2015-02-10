#!/bin/sh
#sudo wget -q http://apt.puppetlabs.com/puppetlabs-release-trusty.deb
#sudo dpkg -i puppetlabs-release-trusty.deb

#sudo apt-get update

sudo puppet apply -e /home/vagrant/prj1/site.pp
