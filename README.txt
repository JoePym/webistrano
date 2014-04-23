Webistrano - Capistrano deployment the easy way



About:
  Webistrano is a Web UI for managing Capistrano deployments.
  It lets you manage projects and their stages like test, production,
  and staging with different settings. Those stages can then
  be deployed with Capistrano through Webistrano.


Installation:

  1. Configuration

    Copy any .rb and .yml files you wish to modify from config/vagrant into config.

    You will want to alter your cas.yml file for the default location of your cas server.
    If you aren't using CAS, comment out the authentication_method line of the webistrano_config.rb file.


  2. Boot Vagrant
    > vagrant up

  3. Add your user to the database (CAS only)
    > ./script/console
    > User.create("login" => "my.name", "email" => "my.email@emailaddy.com")

Author:
  Jonathan Weiss <jw@innerewut.de>

License:
  Code: BSD, see LICENSE.txt
  Images: Right to use in their provided form in Webistrano installations. No other right granted.
