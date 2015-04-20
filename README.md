# vagrant-simple-centos
A simple CentOS 6.6 box used for testing Maven and Jenkins scripts

This is a script I use at home all the time to test load up a CentOS box with Maven and Jenkins builds. It doesn't have a GUI -- on purpose -- since many of my clients load a Jenkins box in a secure or DMZ area and don't allow a UI.

There's a bit of puppet because I wanted to... and most of the heavy lifting is done with the shell provisioner.

WATCH FOR...
The JDK and other Oracle bits are left in for reference and those binaries and zips are usually under /data but they're huge and shouldn't be in source control. So I left them out of the check out. Go to Oracle.com and pull what you want down to /data and change the script accordingly.