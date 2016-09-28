#!/bin/bash 

set -ex

./pharo talents.image eval --save "
Deprecation showWarning: false.
Deprecation raiseWarning: false.
"

