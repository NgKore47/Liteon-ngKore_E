set -xe

git clone https://github.com/ninja-build/ninja.git
cd ninja
sudo dnf install cmake -y
cmake -Bbuild-cmake
cd build-cmake
sudo make install
sudo cp /usr/local/bin/ninja /usr/bin/

