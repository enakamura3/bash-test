#!/bin/bash

image_convert(){
  path=$1
  pathout="png"

  if [ ! -d $pathout ]
  then
    mkdir $pathout
  fi

  for file in $path/*.jpg
  do
    filename=$(ls $file | awk -F / '{print $2}' | awk -F . '{print $1}')
    echo "converting $(ls $file | awk -F / '{print $2}') to $filename.png"
    convert $file $pathout/$filename.png
  done
}

image_convert $@ 0> in.txt 1> out.txt 2> error.txt
if [ $? -eq 0 ]
then
  echo "done"
else
  echo "error converting iamge"
fi
