#!/bin/bash

# use cut, sort, and uniq -c to help you summarize the results from the
# BLAST search.

# Kris Choi
# November 15, 2019
# wchoi6@dons.usfca.edu

for files in /data/my-illumina-sequences/blast_output/KC*.blast_results.csv
do
	echo Summarizing
	cut -d, -f1 "$files" | sort | uniq -c | sort -n >> /data/my-illumina-sequences/summarized_blast_results/"$(basename -s .blast_results.csv "$files")".summarized_blast_result.csv
	echo Finished
done
