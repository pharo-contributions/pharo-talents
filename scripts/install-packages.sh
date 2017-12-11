#!/bin/bash 

set -ex

./pharo Pharo.image eval "

Iceberg enableMetacelloIntegration: true.

Metacello new 
	baseline: 'Talents';
	repository: 'filetree://.';
	load.

Smalltalk saveAs:'talents'.
"

