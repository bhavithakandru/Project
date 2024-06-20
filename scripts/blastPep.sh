#!/usr/bin/env bash
# blastPep.sh
# Usage: bash scripts/blastPep.sh 1>results/blastPep.outfmt6 2>results/logs/blastPep.err

# here, you are using many sequences; each will be run and compared to swissprot db
# let's make sure to run with -outfmt 6.  *NOTICE we are now using blastp*
blastp -query scripts/Trinity.fasta.transdecoder_dir/longest_orfs.pep  \
    -db /work/courses/BINF6308/inputFiles/blastDB/swissprot \
    -max_target_seqs 2 \
    -outfmt 6 -evalue 1e-5 -num_threads 4
 
