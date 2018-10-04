#*** Guess game ***
# By Fernan Orjuela (fernan-orjuelac@unilibre.edu.co) 4-10-2018
function files {
fl=$(ls -1 | wc -l)
echo $fl
}
count=-1 && tries=0
while [[ $count -ne $(files) ]]
do
    echo "Guess: how may files are in the current directory?"
    read count
    if [[ $count -gt $(files) ]]
	then
	echo "It's too high..."
    else
	if [[ $count -lt $(files) ]]
	    then
		echo "It's too low..."
	fi
    fi
let tries=$tries+1
done
echo "Good job! in this directory are $(files) files. You tried $tries time(s)."
