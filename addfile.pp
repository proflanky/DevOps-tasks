class file_modifier {

   # Update beta.txt under /opt/finance

   file { '/opt/sysops/ecommerce.txt':

     ensure => 'present',

     content => 'Welcome to Here!',

     mode => '0777',

   }

 }

 node 'app02.hostname.com' {

   include file_modifier

 }


puppet parser validate blog.pp

puppet agent -tv
