#!/bin/bash

i=0
for var in "$@"		#for number of parameters
do

  let "i += 1"
  ((i = $i )) 

done
echo "i = $i "

LIMIT=10

whitespace=' '
comma=','
dot='.'
question='?'
star='*'
direc='/'
#<
#>
#|

if [ "$i" -lt "$LIMIT" ]
then
	if [ $i -eq 1 ]
	then
	  	cm=$1
	  	$cm
	fi


	if [ $i -eq 2 ]
	then

		if [[ $1 == 'wc' ]];
		then  
	  		cm2=$1
                        cm3=$whitespace$2  #wc name.txt
			$cm2 < $cm3
		elif [[ $1 == 'ls'  && $2 == 'i' ]];
		then
			cm3=$1$whitespace$question$2$star #ls i
			$cm3
			
		else
		
			cm=$1$whitespace$2
	  		$cm
		fi
	fi


	if [ $i -eq 3 ]
	then
	
  	  	if [[ $1 == 'echo' ]]; 
	  	then
	  		cm1=$1$whitespace$2  #echo "hello" sonuc.txt
	  		cm2=$3
	  		$cm1 > $cm2
	  		echo "$cm1 $cm2"
	  	fi
	
	
	  
	  	if [[ $1 == 'ls' ]]; 
	 	then
	  		cm3=$1
	  		cm4=$2		    #ls head -1
	  		cm5=$whitespace$3
	  		$cm3 | $cm4$whitespace$cm5 
	  	fi

		
		if [[ $1 == 'egrep' ]]; 
	 	then
			cm6=$1$whitespace$2$whitespace$3 #egrep 'mellon' mysampledata.txt
			$cm6
			
		fi
	
	fi


	
	if [ $i -eq 4 ]
	then

		if [[ $1 == 'egrep' ]]; 
	 	then
			cm1=$1$whitespace$2$whitespace$3$whitespace$4
			$cm1  #egrep -n 'mellon' mysampledata.txt

		fi

		if [[ $1 == 'wc' ]]; 
	 	then

			cm2=$1$whitespace$2$whitespace$3  #wc -l mysampledata.txt m.txt
			cm3=$4	
			$cm2 > $cm3
			
			
		fi

		
	fi

	

	if [ $i -eq 5 ]
	then
	 	
		if [[ $1 == 'cat' ]];
		then 
			cm1=$1$whitespace$2	#cat file cut -d -f1
			cm2=$3$whitespace$4
			cm3=$whitespace$5
			$cm1 | $cm2 ' ' $cm3

		fi

		if [[ $1 == 'nl' ]];
		then 
			cm=$1$whitespace$2$whitespace$dot$whitespace$3$whitespace$4$whitespace$5
			$cm  #nl -s -w 10 mysampledata.txt

		fi

	fi

	
	if [ $i -eq 6 ]
	then
		if [[ $1 == 'head' ]];
		then

			cm=$1$whitespace$2$whitespace$3
			cm2=$4			
			cm3=$5$whitespace$6		#head -n3 newnew.txt nl tail -n2
			$cm | $cm2 | $cm3
		fi

		if [[ $1 == 'ls' ]];
		then

			cm1=$1$whitespace$2$whitespace$direc$3
			cm2=$4$whitespace$5
			cm3=$6				#ls -l etc tail -n+2 sort
			$cm1 | $cm2 | $cm3
		fi

		
	fi 


	if [ $i -eq 7 ]
	then

		  if [[ $1 == 'echo' ]];
		  then
		  	cm1=$1$whitespace$2$comma$3$whitespace$4$whitespace$5$whitespace$6
		  	cm2=$7	
		  	$cm1 > $cm2	#echo hello my name is ilayda name.txt
		  	echo "$cm1 $cm2"
		  fi
		  
		 
	fi

	
	if [ $i -eq 8 ]
	then
		
		cm=$1$whitespace$2$whitespace$3
		cm2=$4$whitespace$5
		cm3=$6$whitespace$7$whitespace$8 #ls -l newnew.txt sort newnew.txt wc -w newnew.txt
		$cm | $cm2 | $cm3  
 		

	fi	

	if [ $i -eq 9 ]
	then

		cm=$1$whitespace$2$whitespace$3
		cm2=$4$whitespace$5
		cm3=$6$whitespace$7$whitespace$8 #ls -l newnew.txt sort newnew.txt wc -w newnew.txt res.txt
		cm4=$9
		$cm | $cm2 | $cm3  > $cm4
	fi


fi



