set -xe

git clone https://gerrit.o-ran-sc.org/r/o-du/phy.git /home/seven/phy/
cd /home/seven/phy
git checkout oran_e_maintenance_release_v1.0
cp /home/seven/phy_final.patch .
git apply phy_final.patch
sudo echo "export XRAN_LIB_DIR=/home/seven/phy/fhi_lib/lib/build" >> ~/.bashrc
sudo echo "export XRAN_DIR=/home/seven/phy/fhi_lib" >> ~/.bashrc
sudo echo "export RTE_SDK=/home/seven/dpdk-stable-20.11.7" >> ~/.bashrc
sudo echo "export RTE_TARGET=x86_64-native-linuxapp-gcc" >> ~/.bashrc
sudo echo "export RTE_INCLUDE=/usr/local/include" >> ~/.bashrc
sudo echo "export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib64/pkgconfig/" >> ~/.bashrc
source ~/.bashrc
cd fhi_lib/lib
make XRAN_LIB_SO=1
