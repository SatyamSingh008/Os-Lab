calculate_grade() {
	local total_marks=0
	local percentage
	local grade
	
	total_marks=$(($1 + $2 + $3 + $4 + $5))
	percentage=$(echo "scale=2; $total_marks / 5" | bc)
	
	case 1 in
		$(echo "$percentage >= 90" | bc))
			grade="A"
			;;
		$(echo "$percentage >= 80" | bc))
			grade="B"
			;;
		$(echo "$percentage >= 70" | bc))
			grade="C"
			;;
		$(echo "$percentage >= 60" | bc))
			grade="D"
			;;
		$(echo "$percentage >= 40" | bc))
			grade="E"
			;;
		*)
			grade="F"
			;;
	esac
	
	echo "Total Marks: $total_marks"
	echo "Percentage: $percentage%"
	echo "Grade: $grade"
}
if [ $# -ne 5 ]; then
	echo "Usage: $0 <Physics> <Chemistry> <Biology> <Mathematics> <Computer>"
	exit 1
fi

for mark in "$@"; do
	if ! [[ "$mark" =~ ^[0-9]+$ ]];
then 
	echo "Error: All inputs must be numeric values."
	exit 1
	
	fi
done

calculate_grade "$@"
