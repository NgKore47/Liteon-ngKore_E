set -xe

sudo dnf install libtool -y
sudo dnf install blas -y
sudo dnf install lapack -y
sudo dnf install guile30 -y
sudo dnf localinstall ./rhel-packages/gc-devel-8.0.4-7.el9.x86_64.rpm -y
sudo dnf localinstall ./rhel-packages/libconfig-devel-1.7.2-9.el9.x86_64.rpm -y
sudo dnf localinstall ./rhel-packages/pkgconf-pkg-config-1.7.3-10.el9.x86_64.rpm -y
sudo dnf localinstall ./rhel-packages/blas-devel-3.9.0-8.el9.x86_64.rpm -y
sudo dnf localinstall ./rhel-packages/lapack-devel-3.9.0-8.el9.x86_64.rpm -y
sudo dnf localinstall ./rhel-packages/ninja-build-1.10.2-6.el9.x86_64.rpm -y
