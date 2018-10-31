# Manoa-Meals

## Install Guide For Mac

1. Install [VirtualBox 5.2](https://www.virtualbox.org/) and [Vagrant 2.2.0](https://www.vagrantup.com/downloads.html) 

2. Create a directory where your project will live in (C:/vagrant) and `$ cd` to the new directory.

3. `$ git clone https://github.com/solliegarcia/Manoa-Meals.git manoa-meals`

4. Run `$ vagrant up` in the manoa-meals directory to start the vagrant box and to begin provisioning (this will take a while).

5. Run `$ vagrant ssh` in the manoa-meals directory

6. Run `$ gem install rails --no-rdoc --no-ri`

7. Run `$ bundle install`

8. Run `$ rake db:create` to create the database, the default username and password is "vagrant".

6. Navigate to 192.168.10.10 in your web browser and ensure everything is working properly. 
