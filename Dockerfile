FROM alpine:edge

RUN git clone https://github.com/Fahmi2003/absolut/root/userbot
RUN mkdir /root/userbot/bin/
RUN chmod 777 /root/userbot
WORKDIR /root/userbot/

CMD ["python3","-m","userbot"]
