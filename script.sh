#! /bin/bash

mkdir ./hot

for myfile in *;
do
  if [ -f "$myfile" ]; then
    check=$(grep -ni "do" "$myfile")
    if [ -z $check ]; then
      echo "EMPTY"
    else
      echo "FOUND"
      cp "$myfile" ./hot
      echo " " >> hot/"$myfile"
      echo "****************************" >> hot/"$myfile"
      echo "$check" >> hot/"$myfile"
    fi
  else
    echo "$myfile is NOT a file"
    echo " "
  fi
  echo "------------------------------------------"
done
