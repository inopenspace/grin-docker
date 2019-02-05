FROM amd64/ubuntu

RUN  apt-get update \
  && apt-get install -y wget

RUN mkdir -p /grin-wallet
WORKDIR /grin-wallet
RUN wget https://github.com/mimblewimble/grin/releases/download/v1.0.1/grin-v1.0.1-487947758-linux-amd64.tgz
RUN tar xzf grin-v1.0.1-487947758-linux-amd64.tgz
RUN rm grin-v1.0.1-487947758-linux-amd64.tgz

RUN ls -l

RUN chmod +x ./grin

CMD /grin-wallet/grin

