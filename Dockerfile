FROM williamyeh/java7

COPY start.sh .

RUN apt update && apt install unzip -y && mkdir /hexxit
CMD ["sh", "./start.sh"]


EXPOSE 25565/tcp
EXPOSE 25565/udp
VOLUME /hexxit
