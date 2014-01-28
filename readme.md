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

### Reasoning

This cookbook is a wrapper for [chef-rvm](https://github.com/fnichol/chef-rvm). It installs one additional file in /etc/profile.d to ensure the proper default ruby is set for each user session. This also installs the Gems Beyond9 needs to develop with. Feel free to modify and extend for your own purposes. 

We do this in a cookbook instead of a role based on the [Berkshelf Way](http://www.getchef.com/blog/chefconf-talks/the-berkshelf-way-jamie-winsor/) talk by Jamie Winsor.