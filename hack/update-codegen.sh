#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

SCRIPT_ROOT=$(dirname "${BASH_SOURCE[0]}")/..
CODEGEN_PKG=${CODEGEN_PKG:-$(cd "${SCRIPT_ROOT}"; ls -d -1 ./vendor/k8s.io/code-generator 2>/dev/null || echo ../code-generator)}

echo ${SCRIPT_ROOT}
echo ${CODEGEN_PKG}

bash "${CODEGEN_PKG}"/generate-groups.sh "deepcopy,client,informer,lister" \
  github.com/ccww552017/auth-common/pkg/generated github.com/ccww552017/auth-common/pkg/apis \
  auth:v1 \
  --go-header-file "${SCRIPT_ROOT}"/hack/boilerplate.go.txt