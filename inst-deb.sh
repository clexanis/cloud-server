#!/bin/bash
set -e
set -v
for i in ./script/inst-deb/*.sh; do
	bash ./script/inst-deb/"${i}"; done
