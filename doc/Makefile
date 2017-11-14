# Copyright (C) 2017 Nicolas Lamirault <nicolas.lamirault@gmail.com>

# Licensed under the Apache License, Version 2.0 (the #License#);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an #AS IS# BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

SHELL = /bin/bash

BOOK = miv.adoc

NO_COLOR=\033[0m
OK_COLOR=\033[32;01m
ERROR_COLOR=\033[31;01m
WARN_COLOR=\033[33;01m

all: help

help:
	@echo -e "$(OK_COLOR)==== Resume ====$(NO_COLOR)"
	@echo -e "$(WARN_COLOR)pdf$(NO_COLOR)   : Make PDF resume"
	@echo -e "$(WARN_COLOR)html$(NO_COLOR)  : Make HTML resume"
	@echo -e "$(WARN_COLOR)epub$(NO_COLOR)  : Make EPUB resume"
	@echo -e "$(WARN_COLOR)clean$(NO_COLOR) : Cleanup"

.PHONY: pdf
pdf:
	asciidoctor-pdf $(BOOK)

.PHONY: html
html:
	asciidoctor $(BOOK)

.PHONY: epub
epub:
	asciidoctor-epub3 $(BOOK)

clean:
	find . -type f -name \*.html -exec rm -f {} \;
	find . -type f -name \*.pdf -exec rm -f {} \;
	find . -type f -name \*.pdfmarks -exec rm -f {} \;
	find . -type f -name \*.epub -exec rm -f {} \;
