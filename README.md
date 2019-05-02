#refer to https://golang.org/doc/code.html for code organization

#cd to hello directory
cd to hello

#cd to hello directory, run install go, it will create executable in the bin directory of the workspace 
go install

#run go (locally)
go run hello.go

#build go and specify the output file location (-o is output)
go build -o ../bin/main.exe .

#build docker image
docker build -t slnk.net .

#rebuld docker image (remove and reinstall)
docker image rm --force slnk.net
docker build -t slnk.net .

#run docker container in interactive mode and map port 8088 to 8083
docker run -it -p 8083:8088 slnk.net

#open browser and navigate to http://localhost:8083/