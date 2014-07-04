#!/bin/bash

# Exits bash immediately if any command fails
set -e

# Will output commands as the run
set -x

# Want to know what ENV varibles Buildbox sets during the build?
env | grep BUILDBOX

# Buildbox will run your builds by default in:
# ~/.buildbox/account-name/project-name
# pwd

# You can remove this conditional once you've added a repository
if [ -z "$BUILDBOX_REPO" ]; then
  echo "Congratulations! You just ran a build! Now it's time to fill out this build script and customize your project"
  exit 0
fi

# If the git repo doesn't exist in the b
if [ ! -d ".git" ]; then
  git clone "$BUILDBOX_REPO" . -q
fi

# Always start with a clean repo
git clean -fd

# Fetch the latest commits from origin, and checkout to the commit being tested
git fetch -q
git checkout -qf "$BUILDBOX_COMMIT"

# Here are some basic instructions on how to run tests on a Ruby on Rails project
# with rspec. You can change these commands to be what ever you like.
cp /home/paul/radcircle_database.yml /home/paul/.buildbox/ultima/paul/radcircle/config/database.yml

#bundle install --path /home/paul/rubygems/
bundle install

echo '--- preparing database'
./bin/rake db:create 
./bin/rake db:migrate
./bin/rake db:schema:load

echo '--- running specs'
./bin/rspec

# Want to do continious delivery? It's easy to only run commands on a paticular branch.
# Here
if [ "$BUILDBOX_BRANCH" != "master" ]
then
  echo "Skipping deploy for the $BUILDBOX_BRANCH branch."
  exit 0
fi

bundle exec cap production deploy
