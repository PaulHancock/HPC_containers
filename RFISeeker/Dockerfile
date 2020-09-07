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

RUN pip3 install astropy numpy scipy matplotlib
RUN cd /tmp && git clone https://github.com/StevePrabu/RFISeeker.git && \
    cd RFISeeker && python3 setup.py install && cd .. && rm -rf RFISeeker

ENTRYPOINT bash
