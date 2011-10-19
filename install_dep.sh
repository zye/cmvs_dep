############################################
# setting environment variables
############################################

source ./settings64.sh

############################################
# install glew
############################################

cd $CMVS_DEP/glew
cd glew-1.5.2
make


############################################
# install libtool
############################################

cd $CMVS_DEP/libtool
cd libtool-2.2.6b
./configure --prefix=`pwd`
make
make install

############################################
# install imagemagick
############################################

cd $CMVS_DEP/imagemagick
cd ./ImageMagick-6.5.7-8
./configure --prefix=`pwd` --without-perl
make
make install


############################################
# install devil
############################################

cd $CMVS_DEP/devil
mkdir release
cd release
../devil-1.7.8/configure --prefix=`pwd`
make
make install

############################################
# install jhead
############################################

cd $CMVS_DEP/jhead
cd jhead-2.88
make

############################################
# install clapack
############################################

cd $CMVS_DEP/clapack
cp CLAPACK-3.2.1/make.inc.example CLAPACK-3.2.1/make.inc
cd CLAPACK-3.2.1
make

############################################
# install gsl
############################################

cd $CMVS_DEP/libgsl
mkdir release
cd release
../gsl-1.15/configure --prefix=`pwd`
make
make install


