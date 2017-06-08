#!/bin/sh

THEMEURL="https://github.com/brakaus1/hugo-theme-casper"

rm -rf blog/public/
cd blog/themes && git clone https://github.com/brakaus1/hugo-theme-casper
cd ..
hugo --theme=hugo-theme-casper
aws s3 cp public/ s3://$AWS_S3_BUCKET/ --recursive
