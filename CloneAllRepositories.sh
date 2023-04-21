#!/bin/bash

# list of repositories to pull
repositories=$(curl -s "https://api.github.com/users/darkone0112/repos?per_page=1000" | grep -o 'git://[^"]*')

# loop through repositories and clone
cd ..
for repo in $repositories
do
  echo "_________________________________________________________"
  echo "Cloning $repo"
  git clone $repo
  echo "_________________________________________________________"
done