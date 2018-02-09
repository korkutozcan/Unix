#/bin/sh
# Script written by Korkut Ozcan
#
# korkutozcan.com (2/9/2018) 
#
name="`uname -n`"_"`/bin/date +%m-%d-%Y_%H%M`"
echo " "
echo "*** Write specific directory ***"
echo " "
read directory
echo " "
echo "Write find to size (size-in-kilebyte)"
echo "Example 50000(50MB) | 500000(500MB) | 1000000(1GB)"
read size
find $directory type f -size +${size}k -exec du -Sh {} + | sort -rh | head -n55 | more
echo " "
echo "*** Finished Script *** "
find $directory type f -size +${size}k -exec du -Sh {} + | sort -rh  >> /tmp/$name.txt
echo " "
echo "*** You can find the file /tmp/$name.txt ***" 
