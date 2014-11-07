node[:b9ruby][:gems].each do |g|
  execute "gem install #{g}" do
    user "vagrant"
    cwd ::Dir.home('vagrant')
    command "source /home/vagrant/.bashrc && rvm use 2.1.4 && rvm all do gem install #{g}"
    action :run
    environment ({'HOME' => '/home/vagrant'})
  end
end