#Install GOLANG, NodeJS, NPM First


#BUILD SERVER

export GOPATH=~/workspace/go
echo "export GOPATH=~/workspace/go" >> ~/.bashrc
go get github.com/summer0nguyen/grafana

cd $GOPATH/src/github.com/summer0nguyen/grafana


go run build.go setup
$GOPATH/bin/godep restore

npm install 
sudo npm install -g grunt-cli


mv $GOPATH/src/github.com/summer0nguyen/grafana $GOPATH/src/github.com/grafana/grafana


grunt
go run build.go build 

