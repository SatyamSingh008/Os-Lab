if [ $# -ne 3 ]; then echo "Usage: $0 <Voter Name> <Voter ID> <Candidate>" exit 1
fi

voter_name=$1
voter_id=$2
vote=$3

if ! [[ "$voter_id" =~ ^[0-9]+$ ]];
then
	echo "Error: Voter ID must be numeric."
	
	exit 1
fi

echo "Recording vote..."
echo "Voter Name: $voter_name, Voter Id: $voter_id, Voted For: $vote">> voting_record.txt
echo "Vote recorded successfully!"

echo "Vote Details: "
echo "Voter name: $voter_name"
echo "Voter ID: $voter_id"
echo "Voted for: $vote"
