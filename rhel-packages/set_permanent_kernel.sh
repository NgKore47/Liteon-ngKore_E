set -xe

sudo grubby --set-default=/boot/vmlinuz-4.18.0-477.27.1.rt7.290.el8_8.x86_64
sudo sed -i 's/UPDATEDEFAULT=.*/UPDATEDEFAULT=yes/g' /etc/sysconfig/kernel
sudo sed -i 's/DEFAULTKERNEL=.*/DEFAULTKERNEL=kernel-rt-core/g' /etc/sysconfig/kernel
