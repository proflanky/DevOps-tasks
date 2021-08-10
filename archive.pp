class archive_extractor {

    # Copy media.zip to /tmp directory to extract and then cleanup afterwards

    archive { '/tmp/media.zip':

        source        => '/usr/src/media/media.zip',

        extract       => true,

        extract_path  => '/opt/media',

        cleanup       => true,

    }  

}

node 'stapp01.stratos.xfusioncorp.com', 'stapp02.stratos.xfusioncorp.com', 'stapp03.stratos.xfusioncorp.com' {

  include archive_extractor

}


puppet parser validate
puppet agent -tv

