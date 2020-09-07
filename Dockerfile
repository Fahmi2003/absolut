FROM movecrew/one4ubot:alpine-latest

RUN mkdir /absolut && chmod 777 /absolut
ENV PATH="/absolut/bin:$PATH"
WORKDIR /absolut

RUN git clone https://github.com/Fahmi2003/absolut -b master /absolut

#
# Copies session and config(if it exists)
#
COPY ./sample_config.env ./userbot.session* ./config.env* /absolut/

#
# Finalization
#
CMD ["python3","-m","userbot"]