#!/bin/sh

#git push -u heroku master 

# exit 1 on errors
set -e

# deal with remote
echo "Checking if remote exists..."

if ! git ls-remote heroku; then
  echo "Adding heroku remote..."
  git remote add heroku git@heroku.com:infinite-sea-32351.git
fi

# push only origin/master to heroku/master - will do nothing if
# master doesn't change.
echo "Updating heroku master branch..."
git push heroku origin/master:master

