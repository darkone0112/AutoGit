#!/bin/bash

# list of repositories to push
repositories=("AccesoDatos" "CevaLogisticsInventaryApp" "interfaces" "Marfol" "ProgramacionMoviles" "ServiciosProcesos" "SistemasGestion" "darkone0112" "AutoGit")

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