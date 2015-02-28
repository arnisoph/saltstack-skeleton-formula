# -*- mode: ruby -*-
# vi: set ft=ruby :
#
# Useful vagrant plugins:
#
# * vagrant-notify
# * cachier
#
Vagrant.require_version ">= 1.6.5"

Vagrant.configure("2") do |config|

  box_name=ENV['BOX_NAME'] || 'vagrant'
  box_base_path=ENV['BOX_BASE_PATH']
  #BOX_PRIV_KEY=ENV['BOX_PRIV_KEY']

  if ! box_base_path then
    abort("Environment variable BOX_BASE_PATH is undefined. Have you sourced setenv.sh (hint: \"source setenv.sh)?\"")
  end

  config.vm.box = box_name
  config.vm.box_url = "file://" + __dir__ + "/" + box_base_path
  #config.ssh.private_key_path = BOX_PRIV_KEY.split(',')


  # Plugins
  if Vagrant.has_plugin?("vagrant-cachier")
     config.cache.scope = :box
  end

  # Providers
  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end

  # Provision
  # TODO the following is salt specific
  config.vm.synced_folder "../../../../github/salt-modules/_modules", "/vagrant/salt/_modules", disabled: false
  folders = ["_grains", "_modules", "_states", "contrib", "pillar", "states"]
  folders.each do |dir|
    path = "../" + dir
    if File.exists?(path) then
      config.vm.synced_folder path, "/vagrant/salt/formulas/" + box_name + "/" + dir, disabled: false
    end
  end
end
