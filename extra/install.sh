#!/bin/bash
tput setaf 1;
echo "-----------------------------------"
echo "  "
echo "   Updating and installing packages"
echo "  "
echo "-----------------------------------"
tput sgr0;
apt-get update
apt-get install -y git gromacs dssp python3-setuptools python3-dev cython3 g++ pip iperf apt-utils
tput setaf 1;
echo "-----------------------------------"
echo "  "
echo "   Installing Miniconda3"
echo "  "
echo "-----------------------------------"
tput sgr0;
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b
tput setaf 1;
echo "-----------------------------------"
echo "  "
echo "   Installing pip3 dependencies"
echo "  "
echo "-----------------------------------"
tput sgr0;
pip3 install networkx==2.5 astunparse matplotlib numpy==1.20.3
tput setaf 1;
echo "-----------------------------------"
echo "  "
echo "   Cloning LipIDens"
echo "  "
echo "-----------------------------------"
tput sgr0;

git clone https://github.com/TBGAnsell/LipIDens

tput setaf 1;
echo "-----------------------------------"
echo "  "
echo "   Installing LipIDens"
echo "  "
echo "-----------------------------------"
tput sgr0;

cd LipIDens
python3 setup.py install

tput setaf 1;
echo "-----------------------------------"
echo "  "
echo "   DONE"
echo "  "
echo "-----------------------------------"
tput sgr0;

