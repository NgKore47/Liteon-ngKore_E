set -xe

sudo dnf install libtool -y
sudo dnf install blas -y
sudo dnf install lapack -y
sudo dnf localinstall ./guile-devel-2.0.14-7.el8.x86_64.rpm -y
sudo dnf localinstall ./gc-devel-7.6.4-3.el8.x86_64.rpm -y
sudo dnf localinstall ./libconfig-devel-1.5-9.el8.x86_64.rpm -y
sudo dnf localinstall ./pkgconf-pkg-config-1.4.2-1.el8.x86_64.rpm -y
sudo dnf localinstall ./blas-devel-3.8.0-8.el8.x86_64.rpm -y
sudo dnf localinstall ./lapack-devel-3.8.0-8.el8.x86_64.rpm -y
sudo dnf localinstall ./ninja-build-1.8.2-1.el8.x86_64.rpm -y
