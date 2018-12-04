# 264 Testing and Development Environment #
This repo contains the entire testing and devlepment environment used in San Jose State's CMPE 264 Advanced Digital & Computing System Design. This has [cocotb](http://potential.ventures/cocotb/) fully setup and ready to go. 

# Requirements #
The following programs **need** to be installed before anything will actually work.

* [Git](https://git-scm.com/)
* [Vagrant](https://www.vagrantup.com/)
* [Virtualbox](https://www.virtualbox.org/)

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
There is a `verification` folder the home directory of the virtual machine. This directory contains all of the source code for verification as well as each groups design files. This folder is also shared between the host machine and the virtual machine, so you can use your favorite text editor to edit the files rather that installing something inside the virtual machine.

## Running a test ##
To test your `FPMUL` module, navigate to the `verifcation/FPMUL` directory and either run `make group-awesome` or `make group-one`. This will run the IEEE 744 Floating Point Multiplicaiton Test Bench against either of the teams designs. At the end of the test, cocotb has a scoreboard that displays how many tests passed and failed.

## Viewing a Waveform ##
If you would like to dubug why a test is failing, you do that by enabling the waveform output of Icarus verilog in your top level module. Add the following verilog snippet to the end of your `FPMUL` module.

```verilog
    initial begin
        $dumpfile("FPMUL.vcd");
        $dumpvars(0,FPMUL);  
    end
```

This will output a waveform file `FPMUL.vcd` that can be opened in [gtkWave](http://gtkwave.sourceforge.net/), an open-source cross-platform waveform viewer. This software is very similiar to the waveform viewer that is used in Vivado, with many of the same features, with the added benefit of runing on macOS as well.

# Enabling GUI mode #
If you are more comfortable with a GUI environment of Linux, you can enable that by uncommenting two lines in `Vagrantfile`. These lines are clearly labeled. When you enable them, the LXDE desktop environment will be installed. The default user is `vagrant` with the default password being `vagrant`.

In addition to installing LXDE, gtkWave and Sublime Text are also installed to hopefully make it easier to develop on the platform. The shared `verification` folder is still shared between the host and guest.