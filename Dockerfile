FROM debian:11

RUN apt update && apt upgrade -y
RUN apt-get install git curl python3-pip ffmpeg -y
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get install -y nodejs
RUN git clone https://github.com/TeamYukki/YukkiMusicBot/
RUN cd YukkiMusicBot
COPY . /Yukki/
WORKDIR /Yukki/
CMD bash start
