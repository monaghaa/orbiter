FROM gcc:10.2
MAINTAINER Anton Betten "abetton@colostate.edu"

RUN apt-get update
RUN apt-get -y install git

RUN cd /opt

RUN git clone https://github.com/abetten/orbiter

RUN cd orbiter

RUN make && make install

ENV PATH="/opt/orbiter/bin:${PATH}"
