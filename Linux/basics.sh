#/usr/bin/bash

x=5
echo $x

#name=$@
#echo "hi $name"

package=$1
yum install $1 -y

gfg(){

        echo "hi i am function"

}

gfg

#name=$1
#name2=$2
#echo "hi $name , $name2"
#ls
#yum install httpd -y
#date
#cal
#touch a.txt