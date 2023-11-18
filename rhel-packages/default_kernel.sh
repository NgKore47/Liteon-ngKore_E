set -xe

sudo grubby --info=ALL | grep title
sudo grub2-set-default 0
