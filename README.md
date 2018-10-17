# 264 Testing and Development Environment #
This repo contains the entire testing and devlepment environment used in San Jose State's CMPE 264 Advanced Digital & Computing System Design. This has [cocotb](http://potential.ventures/cocotb/) fully setup and ready to go. 

# Requirements #
The following programs **need** to be installed before anything will actually work.

* [Git](https://git-scm.com/)
* [Vagrant](https://www.vagrantup.com/)
* [Virtualbox](https://www.virtualbox.org/)
* [gtkWave](https://sourceforge.net/projects/gtkwave/files/)

# Getting the files #
In order to get all of the files, you will need to run the following in your terminal. If you are running windows, make sure to open `git bash`.

```bash
git clone --recurse-submodules https://github.com/SJSU-CMPE-264/Vagrant.git 264_env
```

# Setting up the environment #
To start the virtual machine and install all of the dependencies, run `vagrant up` in the folder you just cloned.

This will take a few minutes as it downloads the virtual machine and all of the required software. Once this is done you can type `vagrant ssh` to get a terminal inside of the environment.

## Useful Commands ##

* `vagrant up`: start the environment
* `vagrant ssh`: connect to the environment
* `exit`: exit the ssh session after connecting to the environment
* `vagrant halt`: turn off the environment

# Using the Environment #
The `code` folder that is in the repo you just clone, has the folder structure we will be using in this course. You can edit these files either in the terminal of the quest machine(vagrant) or on the host machine using any tool you would normally use (Sublime, VScode, etc.). The changes you make will sync to both the host and guest. 


# Enabling GUI mode #
If you are more comfortable with a GUI environment of Linux, you can enable that by uncommenting two lines in `Vagrantfile`. These lines are clearly labeled. When you enable them, the LXDE desktop environment will be installed. The default user is `vagrant` with the default password being `vagrant`.

In addition to installing LXDE, gtkWave and Sublime Text are also installed to hopefully make it easier to develop on the platform. The shared `code` folder is still shared between the host and guest.