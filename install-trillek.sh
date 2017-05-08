#!/bin/bash
sudo apt-get install cmake git g++
sudo apt-get install libglew-dev libglfw3 libglm-dev libasio-dev
sudo apt-get install liblua5.2-dev libopenal-dev libbullet-dev
sudo apt-get install libprotobuf-dev protobuf-compiler
sudo apt-get install libglfw3-dev
mkdir trillek
cd trillek
git clone https://github.com/trillek-team/tec.git
cd tec
git submodule update --init
cd deps
rm -r selene
git clone https://github.com/adam4813/Selene.git -b trillek
mv Selene selene
cd ..
mkdir build
cd build
cmake ..
make
