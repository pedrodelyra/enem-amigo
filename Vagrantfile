# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # All Vagrant configuration is done here

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "ubuntu/trusty64"

  config.ssh.forward_agent = true

  config.vm.network "private_network", ip: "10.3.3.3"

  # Forward ports for MongoDB and Express app
  config.vm.network "forwarded_port", guest: 27017, host: 27017, auto_correct: true
  config.vm.network "forwarded_port", guest: 3000, host: 3000, auto_correct: true

  config.vm.provision :shell, :inline => "sudo apt-get update -y"
  config.vm.provision :shell, :inline => "sudo apt-get install curl -y"
  config.vm.provision :shell, :inline => "curl -L https://www.opscode.com/chef/install.sh | sudo bash"
  config.vm.provision :shell, :inline => "git clone https://github.com/pedrodelyra/enem-amigo.git"

  config.vm.provision :chef_solo do |chef|
    # Paths to your cookbooks (on the host)
    chef.cookbooks_path = ["cookbooks"]
    # Add chef recipes
    chef.add_recipe 'nodejs'
    chef.add_recipe 'git' # Is required for NPM
    chef.add_recipe "apt"
    chef.add_recipe "ruby_build"
    chef.add_recipe "rbenv::user"
    chef.add_recipe "rbenv::vagrant"
    chef.add_recipe "vim"
  end

  # Install express and express-generator packages globally
  config.vm.provision :shell, :inline => "npm install -g express express-generator"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  config.vm.synced_folder "../enem-amigo", "/enem-amigo"

end