FROM docker:19.03.8-dind

# install dependencies for docker-compose according to 
#   https://docs.docker.com/compose/install/#alternative-install-options
# install docker-compose with pip
RUN apk add --no-cache \
    python-dev=2.7.18-r0 \
    py-pip=18.1-r0 \
    libffi-dev=3.2.1-r6 \
    openssl-dev=1.1.1g-r0 \
    gcc=9.2.0-r4 \
    libc-dev=0.7.2-r0 \
    make=4.2.1-r2 && pip install docker-compose==1.25.5

# chceck docker-compose version
RUN docker-compose version
