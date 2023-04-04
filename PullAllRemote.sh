#!/bin/bash

# list of repositories to pull
repositories=("AccesoDatos" "CevaLogisticsInventaryApp" "interfaces" "Marfol" "ProgramacionMoviles" "ServiciosProcesos" "SistemasGestion" "darkone0112" "AutoGit" "JavaFX" "JdbcDaoProject")

# loop through repositories and pull latest changes
for repo in "${repositories[@]}"
do
  cd $repo
  git pull
  cd ..
done