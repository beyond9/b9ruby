template "/home/vagrant/.gemrc" do
  source "gemrc.erb"
  owner "vagrant"
  group "vagrant"
  mode 0644
end

include_recipe "rvm::user"
include_recipe "rvm::vagrant"

template "/etc/profile.d/rvm.sh" do
  source "rvm.sh.erb"
  mode "0644"
end