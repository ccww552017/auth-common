公共组件
==
# 1. 下载依赖
```shell
go mod vendor
```
# 2. 生成代码
```shell
# 代码在 gopath 下时可以直接执行一下脚本
./hack/update-codegen.sh
```
```shell
docker run -w /go/src/gitlab.td.io/auth/common \
  -v /Users/ccww552010/goProject/common:/go/src/gitlab.td.io/auth/common \
  golang:1.19 \
  ./hack/update-codegen.sh
```