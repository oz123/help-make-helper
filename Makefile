###
#  general configuration of the makefile itself
###
SHELL := /bin/bash
.DEFAULT_GOAL := help

.PHONY: test

PY ?= python3

VERSION ?= $(shell git describe --always)#? version
REGISTRY ?=docker.io#? container registry to push
ORG ?= oz123#? organization to push to
IMG ?= $(shell basename $(CURDIR))#? image name
OPTS ?=#? add extra OPTS to misc commands


help:
	@$(PY) make-help-helper.py < $(MAKEFILE_LIST)

bdbbb/color: HOST ?= localhost #? what host is running NGinx
bbbbb/color: COLOR ?= green #? which color should be the backround
bbbbb/color: ## test that the HOST shows background COLOR
	curl -k -L $(HOST) | grep -qc "background: $(COLOR)"

some/people/organize/their/targets/like/directories: ## you know just because you can
	echo very long target name ay?

color-0:  ## test target with number
	echo target with 0

h2o: ## water should match too
	echo water

color-1:  ## test target with number
	echo target with number

ffff-color: HOST ?= localhost #? what host is running NGinx
ffff-color: COLOR ?= green #? which color should be the backround
ffff-color: ## test that the HOST shows background COLOR
	curl -k -L $(HOST) | grep -qc "background: $(COLOR)"

test_color: HOST ?= localhost #? what host is running NGinx
test_color: COLOR ?= green #? which color should be the backround
test_color: ## test that the HOST shows background COLOR
	curl -k -L $(HOST) | grep -qc "background: $(COLOR)"

docker-build::  ## build a docker image
	echo docker build $(OPTS) -t $(REGISTRY)/$(ORG)/$(IMG):v$(VERSION) -f Dockerfile .

docker-push::  ## push docker image to $(REGISTRY)
	echo docker push $(REGISTRY)/$(ORG)/$(IMG):v$(VERSION)

