class file_modifier {

   # Update news.txt under /opt/itadmin

   file { '/opt/itadmin/news.txt':

     ensure => 'present',

     content => 'Welcome to xFusionCorp Industries!',

     mode => '0744',

   }

 }

 node 'nodednsname' {

   include file_modifier

 }
