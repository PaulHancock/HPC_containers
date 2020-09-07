FROM ubuntu:18.04

# tzdata wants to throw up an interactive message requesting input,so just specify your timezone here instead and it wont.
ENV TZ 'UTC'
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get -y update && \
    apt-get -y install git \
                          wget \
                          cmake \
                          gcc g++ \
                          python3 python3-pip\
                          libopenblas-dev \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN cd /tmp && mkdir wcstools && cd wcstools && \
    wget http://tdc-www.harvard.edu/software/wcstools/wcstools-3.9.6.tar.gz && \
    ls && \
    tar -xzf wcstools-3.9.6.tar.gz && cd wcstools-3.9.6 && \
    make all CC=gcc && cp bin/* /usr/bin/. && \
    cd /tmp && rm -rf wcstools*
RUN pip3 install astropy numpy scipy matplotlib tqdm
RUN cd /tmp && git clone https://github.com/StevePrabu/RFISeeker.git && \
    cd RFISeeker && python3 setup.py install && cd .. && rm -rf RFISeeker

ENTRYPOINT bash
