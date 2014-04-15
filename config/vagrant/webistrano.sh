#!/bin/sh

grep "cd /vagrant" ~vagrant/.bash_profile || echo "cd /vagrant" >>~vagrant/.bash_profile

cd /vagrant

bundle install --path=vendor/bundle

[ -f config/webistrano_config.rb ] || ln -sf /vagrant/config/vagrant/webistrano_config.rb config

for y in `ls /vagrant/config/vagrant/*.yml 2>/dev/null`
do
  [ -f config/`basename $y` ] || ln -sf $y config
done


if bundle exec rake db:version >/dev/null 2>&1
then
  bundle exec rake db:migrate && bundle exec rake db:seed
else
  bundle exec rake db:setup
fi
