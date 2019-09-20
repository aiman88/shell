#!/bin/sh
#Author  	Aiman
#Date		20/9/2019
#Purpose	Addressbook, able to add, delete, update record in text file

add_a_user()
{
	echo Please Enter Name:
	read NAME
	echo Please Enter Phone:
	read PHONE
	echo Please Enter Email:
	read EMAIL
	echo "$NAME;$PHONE;$EMAIL" >> data.txt	
}

search_a_user()
{
	echo Please Enter Name:
	read NAME
	if grep -q $NAME "data.txt"; then    #-q to hide the output
		grep -in $NAME "data.txt" | cut -d";" -f1 
	else
		echo "Name with ${NAME} Not Found"
	fi
}


echo "-------------------------------------------"
echo "		Addressbook			"
echo "-------------------------------------------"
echo "	Please select of the following		"
echo "									"
echo "	1. Search Record				"
echo "	2. Add Record					"
echo "	3. Remove Record				"
echo "	4. Edit Record					"
echo "	5. Show All Record				"
echo "									"
echo Enter you choice:
read CHOICE


if  [ "$CHOICE" = "1" ]; then
   search_a_user
elif [ "$CHOICE" = "2" ]; then
   add_a_user
elif [ "$CHOICE" = "3" ]; then
   echo "Remove"
elif [ "$CHOICE" = "4" ]; then
   echo "Edit"
elif [ "$CHOICE" = "5" ]; then
   echo "Show All Record"   
else
   echo "Not a correct Value"
fi



