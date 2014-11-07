name             'b9ruby'
maintainer       'Chris Escalante'
maintainer_email 'chris@beyond9.co'
license          'All rights reserved'
description      'Installs/Configures Ruby'
version          '0.0.2'

recipe "b9ruby", "Install rvm and ruby 2.1.4"
recipe "b9ruby::gems", "Installs a list of defined gems"
