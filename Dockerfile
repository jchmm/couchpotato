FROM ubuntu

RUN apt-get update && apt-get install -y \
git \
python

RUN git clone https://github.com/RuudBurger/CouchPotatoServer.git /root/CouchPotatoServer

ENV PATH /root/CouchPotatoServer/:$PATH

EXPOSE 5050

ENTRYPOINT ["CouchPotato.py"]