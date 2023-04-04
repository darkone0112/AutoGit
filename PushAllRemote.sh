#!/bin/bash

# list of repositories to push
repositories=("AccesoDatos" "CevaLogisticsInventaryApp" "interfaces" "ProgramacionMoviles" "ServiciosProcesos" "SistemasGestion" "darkone0112" "AutoGit" "JavaFX" "JdbcDaoProject" "Marfol")

# loop through repositories and push latest changes
for repo in "${repositories[@]}"
do
  cd $repo
  git status
  git add .
  git commit -m "Commit from script"
  git push
  cd ..
done