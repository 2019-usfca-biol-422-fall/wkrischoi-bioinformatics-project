#!/bin/bash

# A sample script to process some files
# Kris Choi
# October 23, 2019
# wchoi6@dons.usfca.edu

echo "Hello World"
echo "This is your script speaking"

echo "Starting for loop..."

# this is a for loop
for file in *file*.txt
do
	echo "$file"
done

# here's a for loop with numbers
for number in {1..10}
do
	echo Number is $number
	sleep 1
	echo The pause is done, moving to the next loop
	echo -------------------------------
done

for seqfile in *.fasta
do
	echo In "$seqfile" there are "$(grep -c ">" $seqfile)" sequences
	echo In this directory there are "$(find ./*glob* | wc -l)" fasta files
done
