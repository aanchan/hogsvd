##
# @file      makefile
# @author    Mitch Richling <http://www.mitchr.me/>
# @Copyright Copyright 1997,2014 by Mitch Richling.  All rights reserved.
# @brief     Simple make file to build the examples in this directory.@EOL
# @Keywords  
# @Std       GenericMake
#
#            
#            

TARGLF = symEigF

FC       = gfortran
CC       = gcc
FFLAGS   = -Wall -pthread
CFLAGS   = -Wall

#BLLIB  = -I/usr/lib/atlas-base/atlas/libblas.a
BLLIB  = -lblas
#LPLIB  = -I/home/aanchan/lapack/lapack-3.5.0/liblapack.a
LPLIB  = -llapack
LPINC  = -I/usr/include/atlas


TARGETS = $(TARGLF)

all : $(TARGETS)
	@echo Make Complete

symEigF : 
	cd /home/aanchan/lapack/lapack-3.5.0/examples
	$(FC) $(FFLAGS) symEig.f blaio.f $(LPLIB) $(BLLIB) -o symEigF
