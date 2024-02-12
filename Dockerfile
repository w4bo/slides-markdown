FROM ubuntu:22.04
RUN apt update && apt upgrade -y
RUN apt install pandoc npm -y
RUN npm install --global mermaid-filter@1.4.7
WORKDIR /data