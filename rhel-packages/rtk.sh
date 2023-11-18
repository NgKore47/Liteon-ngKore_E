set -xe
sudo subscription-manager repos --enable rhel-8-for-x86_64-rt-rpms
sudo dnf groupinstall RT -y
sudo grubby --info=ALL | grep title
sudo grub2-set-default 0
sudo grubby --set-default=/boot/vmlinuz-4.18.0-477.27.1.rt7.290.el8_8.x86_64
sudo sed -i 's/UPDATEDEFAULT=.*/UPDATEDEFAULT=yes/g' /etc/sysconfig/kernel
sudo sed -i 's/DEFAULTKERNEL=.*/DEFAULTKERNEL=kernel-rt-core/g' /etc/sysconfig/kernel
sudo reboot 
