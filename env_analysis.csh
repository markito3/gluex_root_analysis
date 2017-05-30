#!/bin/csh -f

# SET BMS_OSNAME, IF NOT SET ALREADY # COPIED FROM sim-recon
if ( ! $?BMS_OSNAME ) then
	setenv BMS_OSNAME `${ROOT_ANALYSIS_HOME}/osrelease.pl`
endif

# SET LIBRARY, PATH
if ( ! $?LD_LIBRARY_PATH ) then
	setenv LD_LIBRARY_PATH
endif
setenv LD_LIBRARY_PATH ${ROOT_ANALYSIS_HOME}/${BMS_OSNAME}/lib/:$LD_LIBRARY_PATH
setenv PATH ${ROOT_ANALYSIS_HOME}/${BMS_OSNAME}/bin/:$PATH
