#!/bin/sh -l

apt-get update
npm i minify -g

find . -type f \( -iname \*.html -o -iname \*.js -o -iname \*.css \) | while read fname
do
    minify ${fname} > ${fname}.mini
    mv ${fname}.mini ${fname}
done
