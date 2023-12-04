# Enable the go modules feature
export GO111MODULE=on
# Set the GOPROXY environment variable
export GOPROXY=https://goproxy.io,direct
# Set environment variable allow bypassing the proxy for specified repos (optional)
# export GOPRIVATE=git.mycompany.com,github.com/my/private

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin

add_path $GOBIN
