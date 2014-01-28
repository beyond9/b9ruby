default['rvm']['user_installs'] = [
  { 'user'          => 'vagrant',
    'default_ruby'  => '2.0.0',
    'rubies'        => ['2.0.0'],
    'global_gems'   => [
      { 'name' => 'sass' },
      { 'name' => 'compass' },
      { 'name' => 'observr'},
      { 'name' => 'rev'}
    ]
  }
]