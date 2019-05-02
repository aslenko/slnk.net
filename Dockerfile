# Start from golang v1.12.4 base image
FROM golang:1.12.4-alpine3.9 as builder

# Make new directory (app) on the target image
RUN mkdir /app

#Set $GOPATH to the current app so that all our packages are properly linked when compiling
ENV GOPATH="/app"

RUN mkdir /app/bin

RUN mkdir /app/src

RUN mkdir /app/src/slnk.net

# Copy all files from root into app
ADD . /app/src/slnk.net

# Set up working directory
WORKDIR /app/src/slnk.net/nf/hello

#build go and output to the bin folder
#RUN go build -o ../../../../bin/main.exe . #v1
RUN go install #v2

#run the executable
#CMD ["/app/bin/main.exe"] #v1 
CMD ["/app/bin/hello"] #v2