from ubuntu:latest

RUN apt-get update -qq
RUN apt-get install git build-essential -qqy
RUN apt-get install libssl-dev -qqy

RUN git clone https://github.com/wg/wrk.git
WORKDIR /wrk
RUN make -j $(nproc)

ENTRYPOINT ./wrk