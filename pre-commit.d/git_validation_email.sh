#!/bin/bash

stream_url=$(git config --get remote.origin.url)

echo $stream_url

fpt_email_re="^[A-Za-z0-9._%+-]+@?(fpt.com|fsoft.com.vn)$"
personal_email_re="^[A-Za-z0-9._%+-]+@?(gmail.com)$"

public_version_control=("bitbucket" "github" "gitlab")
found=0
email=$(git config user.email)
echo $email
for i in "${public_version_control[@]}"
do
    #check if the element matches the search value
    if [[ "$stream_url" == *"$i"* ]]
	then
		found=1
		echo "$i is detected"
		if [[ "$email" =~ $fpt_email_re ]]
		then
			echo "FPT email is detected. Please change email before commiting"
			exit 1
		else
			echo "Allow to commit with $email"
		fi
		break
	else
		found=0
	fi
done

if [[ $found == 0 ]]
then 
	echo "Personal email is detected."
	exec < /dev/tty
	read -p "Do you accept to use $email to commit source code (y/n)?" answer
	case ${answer:0:1} in
		y|Y )
			echo Yes
		;;
		* )
			echo No
			exit 1
		;;
	esac
fi