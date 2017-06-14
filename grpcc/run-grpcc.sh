#!/bin/bash

docker stop grpcc
docker rm grpcc

docker run -it --name grpcc grpcc /bin/bash
