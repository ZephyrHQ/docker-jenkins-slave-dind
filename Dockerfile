FROM jenkins/jnlp-slave:3.26-1

RUN export DEBIAN_FRONTEND=noninteractive \
 && apt-get update \
 && apt-get install -y curl sudo \
 && curl -fsSL https://get.docker.com -o get-docker.sh \
 && sudo sh get-docker.sh \
 && sudo rm get-docker.sh \
 && apt-get autoremove -y \
 && apt-get autoclean all \
 && rm -rf /var/lib/apt/lists/*
