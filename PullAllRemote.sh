#!/bin/bash

# list of repositories to pull
repositories=("Autogit" "CevaLogisticsInventaryApp" "DAM1" "DAM2" "darkone0112" "DLX-Patcher" "JavaFX" "JdbcDaoProject" "pippin-bot" "Python" "legacy-databases-migration" "ad-harvesting-app")
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