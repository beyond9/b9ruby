template "/home/vagrant/.gemrc" do
  source "gemrc.erb"
  owner "vagrant"
  group "vagrant"
  mode 0644
end

execute "rvm-key" do
  user "vagrant"
  cwd ::Dir.home('vagrant')
  command "gpg2 --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3"
  action :run
  environment ({'HOME' => '/home/vagrant'})
end

execute "rvm-install" do
  user "vagrant"
  cwd ::Dir.home('vagrant')
  command "curl -sSL https://get.rvm.io | bash -s stable --ruby=2.1.4"
  action :run
  environment ({'HOME' => '/home/vagrant'})
end

%w{ruby-devel rubygems}.each do |pkg|
  package pkg do
    action :install
  end
end

execute "gem-update-system" do
  user "root"
  command "gem update --system"
  action :run
end

include_recipe "b9ruby::gems"
