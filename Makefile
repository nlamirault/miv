# Copyright (C) 2017-2019 Nicolas Lamirault <nicolas.lamirault@gmail.com>

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

APP = miv

VERSION=$(shell \
	grep "miv_version =" config/plugins/startify.vim \
	|awk -F" " '{ print $$4 }' \
	|sed -e "s/'//g")

SHELL = /bin/bash

DIR = $(shell pwd)

NO_COLOR=\033[0m
OK_COLOR=\033[32;01m
ERROR_COLOR=\033[31;01m
WARN_COLOR=\033[33;01m

MAKE_COLOR=\033[33;01m%-20s\033[0m

.DEFAULT_GOAL := help

BASE_DIR=$(shell echo `pwd`)

.PHONY: help
help:
	@echo -e "$(OK_COLOR)==== $(APP) [$(VERSION)] ====$(NO_COLOR)"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "$(MAKE_COLOR) : %s\n", $$1, $$2}'

.PHONY: debug
debug: ## Display informations
	@echo -e "$(OK_COLOR)Informations$(NO_COLOR)"
	@echo "Configuration source: ${BASE_DIR}"

install: ## Install configuration
	@echo -e "$(OK_COLOR)Install configurations$(NO_COLOR)"
	@test -L ${HOME}/.config/nvim || ln -s ${BASE_DIR} ${HOME}/.config/nvim

uninstall: ## Uninstall configuration
	@echo -e "$(OK_COLOR)Uninstall configurations$(NO_COLOR)"
	@rm -f ${HOME}/.config/nvim
