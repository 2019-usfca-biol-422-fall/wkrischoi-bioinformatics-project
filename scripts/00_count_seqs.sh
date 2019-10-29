#!/bin/bash

# a script to count the number of
# sequences in a set of gzipped fastq
# files

# Kris Choi
# October 29, 2019
# wchoi6@dons.usfca.edu

# count the number of sequences using
# zgrep
zgrep -c "^+$" /iseq/KC-*
