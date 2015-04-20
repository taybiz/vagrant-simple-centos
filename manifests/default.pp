# I could have just used the shell provisioner of course, but this is an easy intro to Puppet

# A thing to emulate v4 versions of puppet without warnings
Package { 
	allow_virtual => true,
}

#groupadd oinstall
group { "oinstall":
    ensure => "present",
}

#useradd -g oinstall oracle
user { "oracle":
    ensure => present,
    managehome => false,
    gid => "oinstall",
    shell => "/bin/bash";
}

#Most of the comcast machines come with an app owned by root...
file { "/app":
	ensure => directory,
}

#where we create a folder owned by oracle
file { "/app/oracle":
	ensure => directory,
	owner => "oracle",
	group => "oinstall",
	mode => 755,
}
