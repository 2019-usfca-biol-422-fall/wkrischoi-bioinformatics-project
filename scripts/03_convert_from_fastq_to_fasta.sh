# convert to fasta for BLAST
# you need to modify this to save the converted fasta file to a file
# instead of printing to the screen
# you'll need to turn this into a for loop too
for files in /data/my-illumina-sequences/trimmed/KC*.trim.fastq
do
	echo Converting files
	bioawk -c fastx '{print ">"$name"\n"$seq}' $files > /data/my-illumina-sequences/trimmed-fasta/$(basename -s .trim.fastq $files).trim.fasta
	echo Finished
done
