#!/bin/bash

# list of repositories to pull
repositories=("Autogit" "CevaLogisticsInventaryApp" "DAM1" "DAM2" "darkone0112" "DLX-Patcher" "JavaFX" "JdbcDaoProject" "pippin-bot" "Python" "legacy-databases-migration")

# loop through repositories and pull latest changes
for repo in "${repositories[@]}"
do
  cd .. # go back to the parent directory
  cd $repo
  git pull
  cd .. 
done