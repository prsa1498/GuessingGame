echo "Welcome to Guessing game!!"

function user_guess {
	echo "Please enter your guess of number of files in the current directory:"
	read guess
	total_files=$(ls -1 | wc -l)
}

user_guess

while [ $guess -ne $total_files ]
do
	if [ $guess -lt $total_files ] 
	then
		echo "Your guess is too low."
	else
		echo "Your guess is too high."
	fi
user_guess
done

echo "Congratulations!  You won the game"