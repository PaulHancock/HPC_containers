# HPC_containers
Container build scripts to support radio astronomy data processing on HPCs


## Available containers

- [wsclean](https://hub.docker.com/repository/docker/paulhancock/wsclean)
  - wsclean 2.10.0, aoflagger 2.10.0, casacore, chgcentre (1.6?)
  - python 2.7.17
  - python 3.6.9
- [mww-reduce](https://github.com/ICRAR/mwa-reduce) (private repo)
  - mwa-reduce scripts including:
    - addimg
addimg
aegean2model
apparently
applybeam
applyion
applysolutions
autoprocess
bbs2model
beam
calibrate
cluster
editmodel
fitsmodel
flagantennae
flagbaselines
flagionsolutions
flagmwa
flagsolutions
flagsubbands
ionpeel
matchsources
mrc2model
mwafinfo
pbaddimg
pbcorrect
peel
phasecal
regridimg
render
scaleimage
sedcombine
solutiontool
storetime
subtrmodel
vo2model


- [Robbie-Next](https://hub.docker.com/r/paulhancock/robbie-next) (external)
  - stilts
  - python 3.6.10
    - AegeanTools
    - astropy, healpy, numpy, scipy, lmfit, pandas, matplotlib, 
- [rfiseeker](https://hub.docker.com/r/paulhancock/rfiseeker)
  - [RFISeeker](https://github.com/StevePrabu/RFISeeker/blob/master/RFISeeker)
  - python 3.6.9
     - astropy, numpy, scipy, matplotlib
  - [wcstools](http://tdc-www.harvard.edu/wcstools/) 3.9.6

## Planned software includes
- cotter : TODO
- manta-ray : is this needed as container?
- mwa-pb : is this needed as container?

