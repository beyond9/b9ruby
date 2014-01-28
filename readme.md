# b9ruby

Installs rvm with Ruby 2.0.0. Also sets default Ruby to 2.0.0 for all users accept for root.

Designed for use in dev with Vagrant.

### Default Gems for Vagrant User

SASS, Compass, Observer and Rev. Overide using:

```ruby
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
```

### Tested On

* Centos 6.5

### Todo

* Decouple Vagrant from base. 
* Assign gems and users to own arrays. 
