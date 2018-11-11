# Manoa-Meals

## Install Guide For Mac

1. Install [VirtualBox 5.2](https://www.virtualbox.org/) and [Vagrant 2.2.0](https://www.vagrantup.com/downloads.html) 

2. Create a directory where your project will live in (C:/vagrant) and `$ cd` to the new directory.

3. `$ git clone https://github.com/solliegarcia/Manoa-Meals.git manoa-meals`

4. Run `$ cd manoa-meals`

5. Run  `$ rm -r .vagrant`

6. Run `$ vagrant up` in the directory to start the vagrant box and to begin provisioning (this will take a while).

7. Run `$ vagrant ssh` in the manoa-meals directory in a new terminal window

8. Run `$ bundle install` to install required ruby gems

9. Run `$ exit` to exit vagrant directory to allow reload

10. Run `$ vagrant reload` to restart vagrant box

11. Run `$ vagrant ssh` in order to run commands in the vagrant box

12. Run `$ rake db:setup` to create and fill the database, note- the default username and password is "vagrant".

13. Navigate to 192.168.10.10 in your web browser and ensure everything is working properly. 
