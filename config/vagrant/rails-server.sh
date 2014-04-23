#!/bin/sh

cd /vagrant

# link to the nginx config
[ -e /etc/nginx/conf.d/development.conf ] || ln -sf /vagrant/config/vhosts/nginx-development.conf /etc/nginx/conf.d/development.conf

# restart unicorn and restart nginx
[ -f /vagrant/tmp/pids/unicorn.pid ] && kill `cat /vagrant/tmp/pids/unicorn.pid`
bundle exec unicorn_rails -c /vagrant/config/unicorn.rb -D
/etc/init.d/nginx restart
