#!/bin/bash 

set -ex

./pharo Pharo.image eval "

Iceberg enableMetacelloIntegration.

Metacello new 
	baseline: 'Talents';
	repository: 'filetree://.';
	load.

Smalltalk saveAs:'talents'.
"

