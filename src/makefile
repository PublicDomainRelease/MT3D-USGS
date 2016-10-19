#############################
# GNU MAKEFILE FOR MT3D-USGS
#############################
#
# :Created by: Mike Toews, GNS Science <M.Toews@gns.cri.nz>

# Name of executable
PROGRAM = mt3dusgs


###########
# COMPILER
###########

## GNU Fortran
#FC = gfortran

## Intel Fortran
FC = ifort

## PGI Fortran
#FC = pgfortran

## Lahey/Fujitsu Fortran
#FC = lf95FC = ifort


# Define the Fortran compiler flags
FFLAGS += -O1

# Default install location
prefix = /usr/local
bindir = $(prefix)/bin

# Linker is the same as the Fortran compiler
LD = $(FC)

#############################################################
# This file does not normally need editing beyond this point


################
# PATTERN RULES
################

.SUFFIXES : .f .f90 .mod .inc .o

# Pattern rules
%.o : %.f
	$(FC) -c $(FFLAGS) $< -o $@

%.o : %.f90
	$(FC) -c $(FFLAGS) $< -o $@


##########
# OBJECTS
##########

OBJECTS = \
    mt_module.o \
    adv1.o \
    btn1.o \
    cts1.o \
    dsp1.o \
    fmi1.o \
    gcg1.o \
    gnt1.o \
    hss1.o \
    lkt1.o \
    mt3d-usgs.o \
    rct1.o \
    sft1.o \
    ssm1.o \
    tob1.o \
    utl1.o \
    uzt1.o \
    xmd1.o \
    xmdlib1.o


##########
# TARGETS
##########

all : $(PROGRAM)

$(PROGRAM) : $(OBJECTS)
	$(LD) $(LDFLAGS) -o $@ $^

###############
# DEPENDENCIES
###############

# Every object requires several modules from mt_module.f90
$(filter-out mt_module.o,$(OBJECTS)) : mt_module.o

# mt3dutil.mod from utl1.f
btn1.o dsp1.o : utl1.o

# xmdlib1.f before xmd1.f
xmd1.o : xmdlib1.o

# xmdmodule.mod from xmd1.f
gnt1.o sft1.o : xmd1.o


#########################
# CLEANUP & INSTALLATION
#########################

clean :
	$(RM) $(OBJECTS)
	$(RM) *.mod

clean-all :
	$(RM) $(PROGRAM)
	$(RM) $(OBJECTS)
	$(RM) *.mod

install : all
	install $(PROGRAM) $(bindir)

uninstall :
	cd $(bindir)
	$(RM) $(PROGRAM)

.PHONY : all clean clean-all install uninstall

