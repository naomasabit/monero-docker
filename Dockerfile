FROM ubuntu:17.10
MAINTAINER naomasabit <naomasabit@gmail.com>

RUN apt-get update && \
    apt-get install -y wget

RUN wget https://downloads.getmonero.org/cli/monero-linux-x64-v0.11.0.0.tar.bz2 -P .

RUN apt-get install -y bzip2
RUN tar -xjvf ./monero-linux-x64-v0.11.0.0.tar.bz2 &&\
    rm ./monero-linux-x64-v0.11.0.0.tar.bz2

EXPOSE 18080 18081

CMD ["./monero-v0.11.0.0/monerod"]

