class { 'firewalld': }

node 'app01.hostname.com' {

  include firewall_node1

}



node 'app02.hostname.com' {

  include firewall_node2

}



node 'app03.hostname.com' {

  include firewall_node3


}


#on client run the following
puppet agent -tv
