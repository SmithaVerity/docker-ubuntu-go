FROM ubuntu:20.04
MAINTAINER Smitha Menon <pm.smitha@gmail.com>

# Update and upgrade repo
RUN apt-get update -y -q && apt-get upgrade -y -q 

# Install tools we might need
RUN DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y -q curl build-essential ca-certificates git 

# Download Go 1.18.1 and install it to /usr/local/go
RUN curl -s https://storage.googleapis.com/golang/go1.18.1.linux-amd64.tar.gz| tar -v -C /usr/local -xz

# Let's people find our Go binaries
ENV PATH $PATH:/usr/local/go/bin

