FROM ubuntu:22.04

WORKDIR /app

COPY . .

RUN apt-get update && apt-get install -y curl

CMD ["bash"]

