if [ $# -ne 5 ]; then echo "Usage: $0 <num1> <num2> <num3> <num4> <num5>"
	exit 1
fi
sum = 0
for num in "$@"; do
	if ! [[ "$num" =~ ^-?[0-9]+$ ]];
then 
	echo "Error: $num is not a valid number."
	exit 1
	
	fi
	
	sum=$((sum + num))
done

echo "The Sum of the number is: $sum"
