#! /bin/bash
hello="hello "
read -p "what is your name : " yourname

echo $hello $yourname
echo "tell me the path of the file you want to open ?"

read filepath
open $filepath
