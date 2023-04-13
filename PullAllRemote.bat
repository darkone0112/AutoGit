#!/bin/bash

rem list of repositories to pull
repositories=("JdbcDaoProject" "AccesoDatos" "CevaLogisticsInventaryApp" "interfaces" "Marfol" "ProgramacionMoviles" "ServiciosProcesos" "SistemasGestion" "darkone0112" "AutoGit")

rem loop through repositories and pull latest changes
for %%i in (%repositories%) do (
  cd %%i
  git pull
  cd..
)