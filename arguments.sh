echo "Script Name: $0"
echo "Arguments Passed: $@"
echo "Printing each argument seperately: "
for arg in "$@"; do
 	echo "$arg" 
done
echo "Total number of arguments: $#"
