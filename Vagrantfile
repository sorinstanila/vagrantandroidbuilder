VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "builder"
  config.vm.box_check_update = false
  config.vm.provision :shell, path: "bootstrap.sh", privileged: false
  config.vm.network "forwarded_port", guest: 8080, host: 8082
  config.vm.synced_folder "/srv/http/repo", "/home/vagrant/android_build"
  config.vm.graceful_halt_timeout = 10
end
