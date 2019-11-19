#!/bin/bash

# A script to run trimmomatic to remove bad sequences and
# trim when quality gets low for Illumina data (fastq files).

# Kris Choi
# November 15, 2019
# wchoi6@dons.usfca.edu

# run trimmomatic on the raw data to get rid of bad sequences and
# save all files into trimmed folder using for loop
for files in /data/my-illumina-sequences/unzipped/KC*.fastq
do
	TrimmomaticSE -threads 4 -phred33 "$files" /data/my-illumina-sequences/trimmed/"$(basename -s .fastq "$files")".trim.fastq LEADING:5 TRAILING:5 SLIDINGWINDOW:8:25 MINLEN:140
done
