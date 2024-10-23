if [ $# -ne 1 ]; then
	echo "Usage: $0 <alphabet>"
	exit 1
fi
if ! [[ "$1" =~ ^[a-zA-Z]$ ]]; then echo "Error: Please enter a single alphabet character."
	exit 1
fi

char=$(echo "$1" | tr '[:upper:]' '[:lower:]')

if [[ "$char" == "a" || "$char" == "e" || "$char" == "i" || "$char" == "o" || "$char" == "u" ]]; then echo "$1 ia a vowel."
else echo "$1 is not a vowel."
fi
