# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'.freeze
PLAYBOOK = 'infrastructure/ansible/playbook-development.yml'.freeze

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define 'debian', primary: true do |debian|
    debian.vm.box = 'bento/debian-9'

    debian.vm.hostname = 'organisation-template-vagrant'

    debian.vm.network "private_network", type: "dhcp"

    debian.vm.provision 'ansible' do |ansible|
      ansible.playbook = PLAYBOOK
    end

    debian.cache.scope = :machine if Vagrant.has_plugin?('vagrant-cachier')

    debian.vm.provider :virtualbox do |vb|
      vb.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
      vb.customize ['modifyvm', :id, '--natdnsproxy1', 'on']
      vb.cpus = 2
      vb.memory = 1024
    end
  end
end
