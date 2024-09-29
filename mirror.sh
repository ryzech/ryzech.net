#!/bin/sh
echo Pushing to sourcehut.
git push -u origin main
echo Pushing to github.
git push -u github main
echo Done.
