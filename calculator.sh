calculate() {
	case $2 in
		+)
			echo "Result: $(($1 + $3))" ;;
		
		-)
			echo "Result: $(($1 - $3))" ;;
			
		*)
			echo "Result: $(($1 * $3))" ;;
		
		/)
			if [ $3 -eq 0 ]; then echo "Divison by zero is not allowed!"
			else echo "Result: $(($1 / $3))" 
			fi
			;;
		*) 
			echo "Invalid operator. Use +,-,*,or /."
			
		esac
}
read -p "Enter First number: " num1
read -p "Enter operator (+,-,*,/) " operator
read -p "Enter second number: " num2

calculate $num1 $operator $num2
