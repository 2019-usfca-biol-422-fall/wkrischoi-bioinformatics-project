#!/bin/bash

# A script to convert fastq to fasta for BLAST
# using bioawk

# Kris Choi
# November 15, 2019
# wchoi6@dons.usfca.edu

# run bioawk to convert all fastq files to fasta using for loop
for files in /data/my-illumina-sequences/trimmed/KC*.trim.fastq
do
	echo Converting files
	bioawk -c fastx '{print ">" "$name" "\n" "$seq"}' "$files" > /data/my-illumina-sequences/trimmed-fasta/$(basename -s .trim.fastq "$files").trim.fasta
	echo Finished
done
