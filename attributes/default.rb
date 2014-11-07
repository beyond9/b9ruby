default['rvm']['user_installs'] = [
  { 'user'          => 'vagrant',
    'default_ruby'  => '2.1',
    'rubies'        => ['2.1'],
    'global_gems'   => [
      { 'name' => 'sass' },
      { 'name' => 'compass' },
      { 'name' => 'observr'},
      { 'name' => 'rev'}
    ]
  }
]