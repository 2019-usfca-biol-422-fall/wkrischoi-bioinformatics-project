#!/bin/bash

# use cut, sort, and uniq -c to help you summarize the results from the
# BLAST search.

# Kris Choi
# November 15, 2019
# wchoi6@dons.usfca.edu

# summarize the blast results to show matching taxa in each sample
# and give a count of the number of organisms that match
for files in /data/my-illumina-sequences/blast_output/KC*.blast_results.csv
do
	echo Summarizing
	cut -d, -f1 "$files" | sort | uniq -c | sort -n >> /data/my-illumina-sequences/summarized_blast_results/"$(basename -s .blast_results.csv "$files")".summarized_blast_result.csv
	echo Finished
done

# find number of sequences before trimming
zgrep -c "@" /data/my-illumina-sequences/unzipped/KC*

# find number of sequenes after trimming
zgrep -c "@" /data/my-illumina-sequences/trimmed/KC*

# find the matches for Acinetobacter identified from culture-based sample
cut -d, -f1 /data/my-illumina-sequences/summarized_blast_results/KC* | sort | uniq -c | sort -n | grep "Acinetobacter"

# find the matches for Hafnia identified from culture-based sample
cut -d, -f1 /data/my-illumina-sequences/summarized_blast_results/KC* | sort | uniq -c | sort -n | grep "Hafnia"

# find the matches for Kocuria identified from culture-based sample
cut -d, -f1 /data/my-illumina-sequences/summarized_blast_results/KC* | sort | uniq -c | sort -n | grep "Kocuria"

# find the matches for Staphylococcus identified from culture-based sample
cut -d, -f1 /data/my-illumina-sequences/summarized_blast_results/KC* | sort | uniq -c | sort -n | grep "Staphylococcus"
