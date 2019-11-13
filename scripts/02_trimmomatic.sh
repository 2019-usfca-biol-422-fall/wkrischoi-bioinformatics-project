# run trimmomatic to throw out bad sequences, trim when quality gets low, or if
# sequences are too short you will need to turn this into a for loop to process
# all of your files
TrimmomaticSE -threads 4 -phred33 /data/my-illumina-sequences/unzipped/KC-3B_S78_L001_R1_001.fastq /data/my-illumina-sequences/trimmed/$(basename -s .fastq KC-3B_S78_L001_R1_001.fastq).trim.fastq LEADING:5 TRAILING:5 SLIDINGWINDOW:8:25 MINLEN:140
