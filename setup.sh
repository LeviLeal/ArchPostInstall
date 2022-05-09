#!/bin/bash

desktop=$1
desktop="${desktop}.sh}"

./flatpak.sh
./essentials.sh
./"${desktop}".