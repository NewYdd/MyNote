#!/bin/bash

proc_array=(move_node plc_node udp_node)
file_name="/log/test.log"
Dir=`echo ~`

proc_exit()
{
	if test $(pgrep -f $proc_name | wc -l) -eq 0
	then
		 echo `date +\%Y-\%m-\%d\ \%H\:\%M:\%S`" $proc_name is died" >> $Dir$file_name
	fi
}

for var in  ${proc_array[@]}
do
	proc_name=$var
	proc_exit
done
