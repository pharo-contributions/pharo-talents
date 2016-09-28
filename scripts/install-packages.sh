#!/bin/bash 

set -ex

./pharo Pharo.image eval "
Metacello new 
	baseline: 'Talents';
	repository: 'filetree://.';
	load.

Smalltalk saveAs:'talents'.
"

