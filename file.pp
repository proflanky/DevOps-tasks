



class firewall_node1 {

  firewalld_port { 'Open port 5000 in the public zone':

    ensure   => present,

    zone     => 'public',

    port     => 5000,

    protocol => 'tcp',

  }

}



class firewall_node2 {

  firewalld_port { 'Open port 5009 in the public zone':

    ensure   => present,

    zone     => 'public',

    port     => 5009,

    protocol => 'tcp',

  }

}



class firewall_node3 {

  firewalld_port { 'Open port 8096 in the public zone':

    ensure   => present,

    zone     => 'public',

    port     => 8096,

    protocol => 'tcp',

  }


}



#On the master run the following
puppet module install puppet-firewalld





