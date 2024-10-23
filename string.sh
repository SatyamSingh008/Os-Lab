if [ $# -ne 2 ]; then
	echo "Usage: $0 <string1> <string2>"
	exit 1
fi

string1=$1
string2=$2

concatenated_string="${string1} ${string2}"
echo "Concatenated String: $concatenated_string"
