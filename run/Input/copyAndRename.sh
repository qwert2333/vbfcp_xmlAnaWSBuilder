#!/bin/bash

opt=$1
spath=/scratchfs/atlas/huirun/atlaswork/VBF_CP/nom_WS/Input/data/
for f in $(ls ${spath} | grep fulldata)
do
  fnew=$(echo ${f} | sed 's/full//g')
  cmd="cp ${spath}/${f} data/${fnew}"
  echo ${cmd}
  if [ "${opt}" = "exe" ];then ${cmd};fi
done
