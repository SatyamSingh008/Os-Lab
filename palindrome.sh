is_palindrome() {
	local num=$1
	local reversed_num=$(echo $num | rev)
	if [ "$num" == "$reversed_num" ]; then
	 return 0
	else
	 return 1
	fi
}

for arg in "$@"; do
	if ! [[ "$arg" =~ ^[0-9]+$ ]];
then
		echo "$arg is not a number,skipping..."
		continue
	fi
	
	if is_palindrome "$arg"; then
	 echo "$arg is a palindrome number."
	else
	 echo "$arg is not a palindrome number."
	
	fi
done
