#/bin/sh
# Script written by Korkut Ozcan
#
# korkutozcan.com (2/9/2018)
#
name="`uname -n`"_"`/bin/date +%m-%d-%Y_%H%M`"
echo " "
echo "*** Write specific directory ***"
echo " "
echo "Example /var/log"
read directory
echo " "
echo "Write find to size (size-in-kilebyte)"
echo "Example 50000(50MB) | 500000(500MB) | 1000000(1GB)"
read size
echo " "
#
# RedHat / CentOS / Fedora Linux  - find {/path/to/directory/} -type f -size +{size-in-kb}k -exec ls -lh {} \; | awk '{ print $9 ": " $5 }'
# Debian / Ubuntu Linux  - find {/path/to/directory/} -type f -size +{size-in-kb}k -exec ls -lh {} \; | awk '{ print $9 ": " $5 }'
#
find ${directory} -type f -size +${size}k -exec ls -lh {} \; | awk '{ print $9 ": " $5 }' | more
echo "*** Finished Script *** "
find ${directory} -type f -size +${size}k -exec ls -lh {} \; | awk '{ print $9 ": " $5 }'  >> /tmp/$name.txt
echo " "
echo "*** You can find the file /tmp/$name.txt ***"

