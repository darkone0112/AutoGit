#!/bin/bash

# list of repositories to pull
repositories=$(curl -s "https://api.github.com/users/darkone0112/repos?per_page=1000" | grep -o 'git://[^"]*')
  cd .. # go back to the parent directory
# loop through repositories and pull latest changes
for repo in "${repositories[@]}"
do
  echo "_________________________________________________________"
  echo "Pulling $repo"
  cd $repo
  git pull
  cd .. 
  echo "_________________________________________________________"

done