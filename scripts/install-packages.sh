#!/bin/bash 

set -ex

./pharo Pharo.image eval "

Iceberg enableMetacelloIntegration: true.

Metacello new 
	baseline: 'Talents';
	repository: 'filetree://./src';
	load.

Smalltalk saveAs:'talents'.
"

