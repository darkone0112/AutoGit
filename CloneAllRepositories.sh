#!/bin/bash

# list of repositories to pull
repositories=$(curl -s "https://api.github.com/users/darkone0112/repos?per_page=1000" | grep -o '"clone_url": "[^"]*' | sed 's/"clone_url": "//')
cd ..
# loop through repositories and pull latest changes
for repo_url in $repositories
do
  echo "_________________________________________________________"
  echo "Cloning $repo_url"
  git clone "$repo_url"
  echo "_________________________________________________________"
done
