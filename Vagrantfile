VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

config.vm.define "trusty64" do |ubuntu64|
  ubuntu64.vm.box = "ubuntu/trusty64"
  ubuntu64.vm.hostname = "builder"
  ubuntu64.vm.box_check_update = false
  ubuntu64.vm.provision :shell, path: "bootstrap.sh", privileged: false
  ubuntu64.vm.network "forwarded_port", guest: 8080, host: 8082
  ubuntu64.vm.synced_folder "/srv/http/repo", "/home/vagrant/android_build"
  ubuntu64.vm.graceful_halt_timeout = 10
  ubuntu64.vm.provider "virtualbox" do |v|
    v.gui = false
    v.name = "android_builder"
    v.customize ["modifyvm", :id, "--cpuexecutioncap", "70"]
    v.memory = 4024
    v.cpus = 2
  end
end  

end

