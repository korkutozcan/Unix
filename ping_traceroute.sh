#!/bin/bash
#Script written by Korkut Ozcan 
#
#http://korkutozcan.com

ping $1 -c 3 >> /tmp/ping.log &
sudo traceroute $1 >> /tmp/traceroute.log &
wait
cat /tmp/{ping,traceroute}.log | more
rm /tmp/{ping,traceroute}.log
