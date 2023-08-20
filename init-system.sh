#!/bin/bash
set -e
for i in ./script/init/*.sh; do
	bash ./script/init/"${i}"; done
