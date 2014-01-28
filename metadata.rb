name             'b9ruby'
maintainer       'Chris Escalante'
maintainer_email 'chris@beyond9.co'
license          'All rights reserved'
description      'Installs/Configures Ruby'
version          '0.0.1'

recipe "b9ruby", "Install chruby, ruby 2.1.0 and ruby 1.9.3"
recipe "b9ruby::gems", "Installs a list of defined gems"

depends 'rvm'
