# lipidens-docker : a Debian 11 lipidens docker wrap


## Installation
- Choose a folder where the docker will lay  
- Download the docker: ``git clone https://github.com/jucastil/lipidens-docker.git``  
- Go into the newly created folder **lipidens-docker**, run the script **debian-miniconda.sh**.  

The script creates a docker called lipidens, clones the lipidens repository and install and compile it inside the docker.

### Run
- Go inside the docker **docker exec -it lipidens bash**
- Run it **python3 lipidens_master_run.py**
