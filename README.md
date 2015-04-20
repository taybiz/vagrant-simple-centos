# vagrant-simple-centos
A simple CentOS 6.6 box used for testing Maven and Jenkins scripts

This is a script I use at home all the time to test load up a CentOS box with Maven and Jenkins builds. It doesn't have a GUI -- on purpose -- since many of my clients load a Jenkins box in a secure or DMZ area and don't allow a UI.

There's a bit of puppet because I wanted to... and most of the heavy lifting is done with the shell provisioner.
