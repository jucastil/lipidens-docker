# lipidens-docker : a Debian 11 lipidens docker wrap

## Prerequisites
- Dockers
- root access

## Installation
- Choose a folder where the docker will lay  
- Download the code: ``git clone https://github.com/jucastil/lipidens-docker.git``  
- Go into the newly created folder ``cd lipidens-docker``, change permissions to make them executable of the next files:<br>
  ``chmod 777 debian-miniconda.sh``; <br>
  ``chmod 777 extra/install.sh`` <br>
- Run the installation script ``./debian-miniconda.sh``.  

The script should create a docker called **lipidens**, clone the [LipIDens repository](https://github.com/TBGAnsell/LipIDens) and install and compile it inside the docker.

### Run
- Copy your PDB inside the **extra** folder
- Get a shell inside the docker ``docker exec -it lipidens bash``
- Go to the LipIDens folder ``cd LipIDens/``
- Run it ``python3 lipidens_master_run.py``
- The PDB is available inside the docker in the ``/extra`` folder (do ``ls /extra``)
