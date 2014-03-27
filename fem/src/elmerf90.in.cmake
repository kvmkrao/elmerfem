#!/bin/sh -f

if test "$ELMER_LIB" = ""; then
  if  test "$ELMER_HOME" = ""; then
     LIBDIR=@prefix@/lib
     INCLUDE=@prefix@/share/elmersolver/include
  else
     LIBDIR=$ELMER_HOME/lib
     INCLUDE=$ELMER_HOME/share/elmersolver/include
  fi
else
  LIBDIR=$ELMER_LIB
  INCLUDE=$ELMER_LIB/../include
fi

FC=@CMAKE_Fortran_COMPILER@
cmd="$FC @CMAKE_Fortran_FLAGS@ @CMAKE_SHARED_LIBRARY_Fortran_FLAGS@ -I$INCLUDE *"
printf "%s " $cmd
printf "\n"
# $FC @CMAKE_Fortran_FLAGS@ @ELMERF90_INCLUDE_DIRS@ $*
#@USE_WINDOWS_COMPILER_FALSE@$FC @FCFLAGS@ @SH_LINKING_TO_FLAGS@ @INCLUDE_MODULE_FLAG@$INCLUDE @B64FLAGS@ @SH_LDFLAGS@ @EXTRA_LIBS@ $*
#@USE_WINDOWS_COMPILER_TRUE@$FC @FCFLAGS@ @INCLUDE_MODULE_FLAG@$INCLUDE @B64FLAGS@ @SH_LDFLAGS@ @EXTRA_LIBS@ $* -L$LIBDIR -lelmersolver
