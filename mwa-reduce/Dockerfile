FROM ubuntu:18.04

# tzdata wants to throw up an interactive message requesting input,so just specify your timezone here instead and it wont.
ENV TZ 'UTC'
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get -y update --fix-missing
RUN apt-get -y install cmake \
                       gcc g++ \
                       libhdf5-dev \
                       casacore-dev \
                       libopenblas-dev \
                       libboost-dev \
                       libboost-date-time-dev \
                       libboost-system-dev \
                       libboost-filesystem-dev \
                       libboost-thread-dev \
                       libcfitsio-dev \
                       libfftw3-dev \
                       libxml++2.6-dev \
                       libgsl-dev

COPY code code
RUN cd code/mwa-reduce && \
    mkdir build && \
    cd build/ && \
    cmake ../ && \
    make -j 8 && \
    find . -maxdepth 1 -type f -executable -exec cp {} /usr/bin/. \; && \
    cd ../../ && \
    rm -rf code