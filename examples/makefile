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
#CC       = gcc
FFLAGS   = -O0 -g -fimplicit-none -Wall -Wline-truncation -Wcharacter-truncation -Wsurprising -Waliasing -Wimplicit-interface -Wunused-parameter -fwhole-file -fcheck=all -pedantic -fbacktrace -fall-intrinsics -pthread
#CFLAGS   = -Wall

BLLIB  = /usr/lib/atlas-base/atlas/libblas.a
#BLLIB  = -lblas
LPLIB  = /home/aanchan/lapack/lapack-3.5.0/liblapack.a
#LPLIB  = -llapack
LPINC  = -I/usr/include/atlas


TARGETS = $(TARGLF)

all : $(TARGETS)
	@echo Make Complete

symEigF : 
	cd /home/aanchan/lapack/lapack-3.5.0/examples
	$(FC) $(FFLAGS) symEig.f blaio.f $(LPLIB) $(BLLIB) -o symEigF
