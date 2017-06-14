#-----------------------------------------------------------------------
# gRPCC - A gRPC interface for easy testing against gRPC servers
#
# build : docker build -t grpcc .
#
# Copyright (c) 2017 Takeshi Yonezu
# All Rights Reserved.
#-----------------------------------------------------------------------

FROM ubuntu:16.04

# A gRPC cli interface for easy testing against gRPC servers
#
# https://njp.io/grpcc-a-simple-command-line-client-for-grpc-services/
# https://github.com/njpatel/grpcc

# src/node/extension_binary/grpc_node.node does not exist / fails to compile
# #6435 2016/05/05
# https://github.com/grpc/grpc/issues/6435

RUN apt update && apt upgrade -y && \
    apt install -y curl nodejs npm && \
    npm cache clean && \
    npm install n -g && \
    n stable && \
    ln -sf /usr/local/bin/node /usr/bin/node && \
    node -v && \
    npm install --unsafe-perm -g grpcc

CMD ["/bin/bash"]
