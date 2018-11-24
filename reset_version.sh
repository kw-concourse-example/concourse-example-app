#!/usr/bin/env bash

# flush local tags for a clean state with fetch
git pull
git tag -d $(git tag -l)
git fetch
# delete remote tags
git push origin --delete $(git tag -l)
# now also delete locally
git tag -d $(git tag -l)

git checkout version
echo "0.0.0" > release-version
echo "0.0.0" > candidate-version
echo "0.0.0" > staging-version
git add *-version
git commit -am "reset versions"
git push
