#! /bin/bash
#touch 1.txt 2.txt
#pwd > 1.txt

#read -p "what prefix you want to give to file 1.txt ? " prefix

#mv 1.txt ${prefix}1.txt

#create script executable name decided by user

read -p "the file name is : " filename
touch $filename.sh
echo "#! /bin/bash" > $filename.sh
echo "echo hellow" $filename >> $filename.sh
chmod +x $filename.sh