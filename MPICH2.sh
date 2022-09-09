# Script to setup MPICH
wget https://www.mpich.org/static/downloads/4.0.2/mpich-4.0.2.tar.gz

# Now following instructions in README
tar xzf mpich-4.0.2.tar.gz
mkdir mpich
cd mpich-4.0.2
./configure --prefix=$HOME/TauDEMDependencies/mpich/mpich-install 2>&1 | tee c.txt
make 2>&1 | tee m.txt
make install 2>&1 | tee mi.txt

# Add the following to .bashrc
PATH=$HOME/TauDEMDependencies/mpich/mpich-install/bin:$PATH ; export PATH
