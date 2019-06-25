#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${DIR}

if [ ! -d "explorer" ];then
  mkdir explorer
fi

# copy bpm-ui/explorer source code
bpm_explorer_path=../../../bpm/bpm-ui/explorer
cp -R ${bpm_explorer_path}/* explorer
# update config and new file
cp -Rf bpm-explorer/** explorer/
