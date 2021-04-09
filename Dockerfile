FROM gcc:10.2
MAINTAINER Anton Betten "abetton@colostate.edu"

RUN apt-get update

RUN cd /opt

RUN git clone https://github.com/abetten/orbiter

RUN cd /opt/orbiter

RUN make -f makefile && make install

ENV PATH="/opt/orbiter/bin:${PATH}"
