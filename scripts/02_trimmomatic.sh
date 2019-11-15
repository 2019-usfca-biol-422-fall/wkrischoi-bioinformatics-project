#!/bin/bash

# A script to run trimmomatic to remove bad sequences and
# trim when quality gets low for Illumina data (fastq files).

# Kris Choi
# November 15, 2019
# wchoi6@dons.usfca.edu

TrimmomaticSE -threads 4 -phred33 /data/my-illumina-sequences/unzipped/KC-3B_S78_L001_R1_001.fastq /data/my-illumina-sequences/trimmed/$(basename -s .fastq KC-3B_S78_L001_R1_001.fastq).trim.fastq LEADING:5 TRAILING:5 SLIDINGWINDOW:8:25 MINLEN:140
