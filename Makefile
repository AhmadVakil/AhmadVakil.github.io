all: README.md

README.md:
	echo "## Guessing game for the Unix Workbench course\n" > README.md
	echo -n "README.md created: " >> README.md
	date >> README.md
	echo -n "\nTotal number of lines in guessinggame.sh: " >> README.md
	wc -l < ./guessinggame.sh >> README.md
