VERSION=$(shell git rev-parse --abbrev-ref HEAD)-$(shell git rev-parse --short HEAD)
GO_PREFIX="github.com/JoveYu/thriftfile/go/"
PY_PREFIX="thriftfile.py."
THRIFT=$(wildcard  thrift/*.thrift)

default: all
all: clean
	mkdir -p go py
	for file in ${THRIFT}; do \
		thrift -r --gen py:package_prefix=${PY_PREFIX} -out py $$file; \
		thrift -r --gen go:package_prefix=${GO_PREFIX} -out go $$file; \
	done
clean:
	rm -rf go py
	rm -rf *.egg-info build dist
