#!/bin/bash
# auto-setup-hackmyresume.sh, ABr
# Ensure that hackmyresume is installed

# is it installed?
which hackmyresume >/dev/null 2>&1 && exit 0

# some hard-coded crap that fits my expected machine setup :)
cd ../..
[ ! -d ./hacksalot ] && mkdir ./hacksalot
cd ./hacksalot
[ ! -d ./HackMyResume ] && git clone 'https://github.com/hacksalot/HackMyResume.git'
cd ./HackMyResume
npm install hackmyresume -g

