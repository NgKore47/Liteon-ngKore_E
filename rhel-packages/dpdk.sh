set -xe

wget http://fast.dpdk.org/rel/dpdk-20.11.7.tar.xz
tar xvf dpdk-20.11.7.tar.xz && cd dpdk-stable-20.11.7
/usr/local/bin/meson build
ninja -C build
sudo ninja install -C build
