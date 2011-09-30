maintainer       "Eric G. Wolfe"
maintainer_email "wolfe21@marshall.edu"
license          "Apache 2.0"
description      "Installs/Configures sysctl for Enterprise Linux"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
recommends       "oracle"
recommends       "iscsi"
conflicts        "sysctl"
version          "0.0.6"

%w{ redhat centos scientific }.each do |os|
  supports os
end

# Default RHEL sysctl values
attribute "net/ipv4/ip_forward",
  :display_name => "net/ipv4/ip_forward",
  :description => "0 to disable IP Forwarding, 1 to enable IP forwarding",
  :default => "0"

attribute "net/ipv4/conf/default/rp_filter",
  :display_name => "net/ipv4/conf/default/rp_filter",
  :description => "Reverse path filtering",
  :default => "1"

attribute "net/ipv4/conf/default/accept_source_route",
  :display_name => "net/ipv4/conf/default/accept_source_route",
  :description => "Whether or not to accept source route packets",
  :default => "0"

attribute "kernel/sysrq",
  :display_name => "kernel/sysrq",
  :description => "System Request debugging functionality",
  :default => "0"

attribute "kernel/core_uses_pid",
  :display_name => "kernel/core_uses_pid",
  :description => "core dumps will append the PID to the filename",
  :default => "1"

attribute "kernel/ipv4/tcp_syncookies",
  :display_name => "kernel/tcp_syncookies",
  :description => "Controls use of TCP syncookies",
  :default => "1"

attribute "kernel/msgmnb",
  :display_name => "kernel/msgmnb",
  :description => "maximum size of a message, in bytes",
  :default => "65536"

attribute "kernel/msgmax",
  :display_name => "kernel/msgmax",
  :description => "default maxmimum size of a message queue",
  :default => "65536"

attribute "kernel/shmmax",
  :display_name => "kernel/shmmax",
  :description => "Maximum shared segment size, in bytes. Defaults to 4294967295",
  :default => "4294967295"

attribute "kernel/shmall",
  :display_name => "kernel/shmall",
  :description => "maximum number of shared memory segments, in pages",
  :default => "268435456"
