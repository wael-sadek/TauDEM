# Getting GDAL
wget http://download.osgeo.org/gdal/3.5.1/gdal351.zip gdal351.zip
unzip gdal351.zip
cd gdal-3.5.1
./configure --prefix=$HOME/TauDEMDependencies/gdal 
make
make install

# The following 3 lines should also be appended to .bashrc
export PATH=$HOME/TauDEMDependencies/gdal/bin:$PATH
export LD_LIBRARY_PATH=$HOME/TauDEMDependencies/gdal/lib:$LD_LIBRARY_PATH
export GDAL_DATA=$HOME/TauDEMDependencies/gdal/share/gdal
# Test
gdalinfo --version
