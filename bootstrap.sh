#wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
#sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get purge openjdk-\* icedtea-\* icedtea*-\*
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
# set accept to eula for java
echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
# start installing packages
sudo apt-get install -y oracle-java7-installer git-core gnupg ccache lzop flex bison gperf build-essential zip curl zlib1g-dev zlib1g-dev:i386 libc6-dev lib32ncurses5 lib32z1 lib32bz2-1.0 lib32ncurses5-dev x11proto-core-dev libx11-dev:i386 libreadline6-dev:i386 lib32z-dev libgl1-mesa-glx:i386 libgl1-mesa-dev g++-multilib mingw32 tofrodos python-markdown libxml2-utils xsltproc readline-common libreadline6-dev libreadline6 lib32readline-gplv2-dev libncurses5-dev lib32readline5 lib32readline6 libreadline-dev libreadline6-dev:i386 libreadline6:i386 bzip2 libbz2-dev libbz2-1.0 libghc-bzlib-dev lib32bz2-dev libsdl1.2-dev libesd0-dev squashfs-tools pngcrush schedtool libwxgtk2.8-dev python
sudo apt-get updatelibreadline6
sudo apt-get upgrade zlib1g-dev:i386 libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-glx:i386 libreadline6:i386
sudo apt-get install 
#sudo ln -s /usr/lib/i386-linux-gnu/mesa/libGL.so.1 /usr/lib/i386-linux-gnu/libGL.so
mkdir ~/bin 
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo 
chmod a+x ~/bin/repo
echo 'export PATH=~/bin:$PATH' >> ~/.bashrc
source ~/.bashrc

# disable key prompt
#echo "Host github.com
#   StrictHostKeyChecking no" > $HOMEDIR/.ssh/config


