#!/bin/sh
echo "# 4dvop-app" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin git@github.com:iBedard37/4dvop-app.git
git push -u origin master