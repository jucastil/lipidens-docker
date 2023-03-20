#!/bin/bash
##############################
#
#	LipIDens debian docker
#
###--------------------------
#
#	docker tags from:
# https://github.com/ConSol/docker-headless-vnc-container
#
###----------------------------
#
#	Juan.Castillo@biophys.mpg.de
#	Last update: 23.1.23
#
################################

docker run --name lipidens --hostname="lipidens" -d --privileged -p 5901:5901 -p 6901:6901 -e VNC_RESOLUTION=1920x1200  -v `pwd`/extra/:/extra/  --user $(id -u):$(id -g) consol/debian-xfce-vnc
docker exec -it lipidens "/extra/install.sh"




###### LipIDens software requrements
#docker exec -it lipidens apt-get install -y git gromacs dssp python3-setuptools python3-dev cython3 g++ pip iperf apt-utils
#docker exec -it lipidens apt-get update
#docker exec -it lipidens pip3 install networkx==2.5 astunparse matplotlib numpy==1.20.3
#docker exec -it lipidens git clone https://github.com/TBGAnsell/LipIDens
#tput setaf 1; 
#echo "	-------------------------------------------------"
#echo ""
#echo "		Initial setup done, please continue inside the docker";
#echo " 		bash Miniconda3-latest-Linux-x86_64.sh " 
#echo "		conda create -n LipIDens python=3.9"
#echo "		pip3 install -r requirements.txt"
#echo ""
#echo "	-------------------------------------------------"
##29  pip3 install seaborn
##   31  pip3 install sealipid
##   32  pip3 install pylipid
##   50  pip3 install vermouth

#tput sgr0;

#docker exec -it debiantest bash
