class file_modifier {

   # Update beta.txt under /opt/finance

   file { '/opt/sysops/ecommerce.txt':

     ensure => 'present',

     content => 'Welcome to xFusionCorp Industries!',

     mode => '0777',

   }

 }

 node 'stapp02.stratos.xfusioncorp.com' {

   include file_modifier

 }


puppet parser validate blog.pp

puppet agent -tv
