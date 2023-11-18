set -xe

echo "0" > /sys/class/net/ens1f0/device/sriov_numvfs
echo "2" > /sys/class/net/ens1f0/device/sriov_numvfs
ip link set ens1f0 vf 0 mac 00:11:22:33:44:66 vlan 564 spoofchk off trust on
ip link set ens1f0 vf 1 mac 00:11:22:33:44:66 vlan 564 spoofchk off trust on
modprobe vfio-pci
/usr/local/bin/dpdk-devbind.py --bind vfio-pci 0000:31:02.0
/usr/local/bin/dpdk-devbind.py --bind vfio-pci 0000:31:02.1
/usr/local/bin/dpdk-devbind.py -s
sudo ifconfig ens1f0 mtu 1500
sudo ethtool -G ens1f0 rx 4096 tx 4096
