#!/bin/bash
let "exe = 0"
let "not_exe = 0"
let "folder = 0"
for i in `Ls $1`
do
 if [ -d $i ];
  then let "folder = $folder + 1";
  echo $i >> folder.txt
 elif [ -x $i ];
  then let "exe = $exe + 1";
  echo $i >> executable.txt
 else
  let "not_exe = $not_exe + 1"
 fi
done
echo "There are $exe executable files and $not_exe non executable files. There are $folder folders."
