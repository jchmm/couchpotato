FROM ubuntu

RUN apt-get update && apt-get install -y \
git \
python

RUN git clone https://github.com/RuudBurger/CouchPotatoServer.git /root/CouchPotatoServer

ENV PATH /root/CouchPotatoServer:$PATH

VOLUME ["/data"]

expose 5050

CMD ["CouchPotato.py","--data_dir","/data","--console_log"]
