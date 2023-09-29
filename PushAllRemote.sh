#!/bin/bash

# list of repositories to push
repositories=$(curl -s "https://api.github.com/users/darkone0112/repos?per_page=1000" | grep -o 'git://[^"]*')
# loop through repositories and push latest changes
cd ..
for repo in "${repositories[@]}"
do
  echo "_________________________________________________________"
  echo "Pushing $repo"
  cd $repo
  git status
  git add .
  git commit -m "Commit from script"
  git push
  cd ..
  echo "_________________________________________________________"
done