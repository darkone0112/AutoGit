#!/bin/bash

# list of repositories to push
repositories=("Autogit" "CevaLogisticsInventaryApp" "DAM1" "DAM2" "darkone0112" "DLX-Patcher" "JavaFX" "JdbcDaoProject" "pippin-bot" "Python" "legacy-databases-migration")

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