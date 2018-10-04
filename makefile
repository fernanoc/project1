README.md :
	echo '# Guess game: NumberOfFiles' > README.md
	date >> README.md
	wc -l guessinggame.sh >> README.md
clean :
	rm README.md

