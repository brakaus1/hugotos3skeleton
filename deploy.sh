#!/bin/sh

THEMEURL="https://github.com/brakaus1/hugo-theme-casper"

cd blog
rm -rf public/
cd themes && git clone $THEMEURL
cd ..
hugo --theme=hugo-theme-casper
cd public
aws s3 cp . s3://$AWS_S3_BUCKET/ --recursive

