###############################################################################
#
# You need to set CMVS_DEP before doing anything
#
###############################################################################

###############################################################################
# 
# CMVS_DEP
#
# The path to the dependenies of CMVS.
# This script assumes the dependencies are located in the same path.
# This script assumes the following packages are located in the path:
# 1) glew 1.5.2
# 2) libtool 2.2.6b
# 3) imagemagick 6.5.78
# 4) devil 1.7.8
# 5) jhead 2.88
# 6) clapack 3.2.1 (threadsafe)
# 7) gsl 1.15
#
# You may need to add or remove dependent packages according to your system
#
###############################################################################

# example: export CMVS_DEP=/home/cudauser/application4/cmvs_dep

export CMVS_DEP=
if `test -e $CMVS_DEP/settings64.sh` ; then 
	echo $CMVS_DEP; 
else
	echo Please set CMVS_DEP in settings64.sh ; 
	return; 
fi


# glew
export LIBRARY_PATH=$LIBRARY_PATH:$CMVS_DEP/glew/glew-1.5.2/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CMVS_DEP/glew/glew-1.5.2/lib

# devil
export LIBRARY_PATH=$LIBRARY_PATH:$CMVS_DEP/devil/release/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CMVS_DEP/devil/release/lib

# libtool
export PATH=$PATH:$CMVS_DEP/libtool/libtool-2.2.6b/bin

# jhead
export PATH=$PATH:$CMVS_DEP/jhead/jhead-2.88

# image magick
export PATH=$PATH:$CMVS_DEP/imagemagick/ImageMagick-6.5.7-8/bin

# clapack
export CLAPACK_PATH=$CMVS_DEP/clapack/CLAPACK-3.2.1
export C_INCLUDE_PATH=$C_INCLUDE_PATH:$CMVS_DEP/clapack/CLAPACK-3.2.1/INCLUDE
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:$CMVS_DEP/clapack/CLAPACK-3.2.1/INCLUDE
export LIBRARY_PATH=$LIBRARY_PATH:$CMVS_DEP/clapack/CLAPACK-3.2.1
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CMVS_DEP/clapack/CLAPACK-3.2.1

# libgsl
export PATH=$PATH:$CMVS_DEP/libgsl/release/bin
export C_INCLUDE_PATH=$C_INCLUDE_PATH:$CMVS_DEP/libgsl/release/include
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:$CMVS_DEP/libgsl/release/include
export LIBRARY_PATH=$LIBRARY_PATH:$CMVS_DEP/libgsl/release/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CMVS_DEP/libgsl/release/lib

