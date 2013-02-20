#! /bin/sh
echo "Running pyflakes..."
git status | grep 'modified' | awk '{system("pyflakes "$3)}'
echo "Continue running pep8[Y/N]?"
read line
if [ line -eq "Y" ]
then
	git status | grep 'modified' | awk '{system("pep8 "$3)}'
fi