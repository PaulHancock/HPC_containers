FROM ubuntu:18.04

# tzdata wants to throw up an interactive message requesting input,so just specify your timezone here instead and it wont.
ENV TZ 'UTC'
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get -y update

## This gives wsclean 2.5 in a super easy one liner
#RUN apt-get install -y wsclean
#ENTRYPOINT bash

RUN apt-get -y install git \
                          wget \
                          build-essential \
                          cmake \
                          gfortran \
                          gcc g++ cpio \ 
                          python3-dev \
                          libopenblas-dev \
                          libboost-dev \
                          libboost-date-time-dev \
                          libboost-system-dev \
                          libboost-filesystem-dev \
                          libboost-program-options-dev \
                          libboost-python-dev \
                          libboost-thread-dev \
                          libcairo2-dev \
                          libcfitsio-dev \
                          liberfa-dev \
                          libfftw3-dev \
                          libgtkmm-3.0-dev  \
                          libgsl-dev \
                          libhdf5-dev \                           
                          libpng-dev \
                          libxml++2.6-dev \
                          casacore-dev \
                          aoflagger-dev \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN git clone "https://git.code.sf.net/p/wsclean/code" \
    && cd code/wsclean \
    && mkdir -p build \
    && cd build \
    && cmake .. \
    && make -j 8 \
    && make install
    
ENTRYPOINT bash
