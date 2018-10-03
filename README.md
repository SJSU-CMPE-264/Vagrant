# 264 Testing and Development Environment #
This repo contains the entire testing and devlepment environment used in San Jose State's CMPE 264 Advanced Digital & Computing System Design. 

# Requirements #

* (Git)[https://git-scm.com/]
* (Vagrant)[https://www.vagrantup.com/]
* (Virtualbox)[https://www.virtualbox.org/]

# Getting the files #
In order to get all of the files, you will need to run the following in your terminal. If you are running windows, make sure to open `git bash`.

```bash
git clone --recurse-submodules https://github.com/AlexNorell/CMPE-264-Vagrant.git 264_env
```

# Setting up the environment #
To start the virtual machine and install all of the dependencies, run `vagrant up` in the folder you just cloned.

This will take a few minutes as it downloads the virtual machine and all of the required software. Once this is done you can type `vagrant ssh` to get a terminal inside of the environment.

## Useful Commands ##

* `vagrant up`: start the environment
* `vagrant ssh`: connect to the environment
* `exit`: exit the ssh session after connecting to the environment
* `vagrant halt`: turn off the environment

