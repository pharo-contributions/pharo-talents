#!/bin/bash 

set -ex

wget -O - get.pharo.org/vm70 | bash
wget "https://ci.inria.fr/pharo-ci-jenkins2/job/Test%20pending%20pull%20request%20and%20branch%20Pipeline/view/change-requests/job/PR-871/lastSuccessfulBuild/artifact/bootstrap-cache/*zip*/bootstrap-cache.zip"
unzip -jo bootstrap-cache.zip "bootstrap-cache/Pharo7.0-32bit-*.zip"
unzip Pharo7.0-32bit-*.zip
mv Pharo7.0-32bit-*.image Pharo.image
mv Pharo7.0-32bit-*.changes Pharo.changes

