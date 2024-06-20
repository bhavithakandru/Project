#!/usr/bin/env bash
# predictproteins.sh
# Usage: bash results/predictProteins.sh 1>results/logs/predictProteins.log 2>results/logs/predictProteins.err

TransDecoder.Predict \
    -t data/Mitrinity_de_novo/Trinity.fasta \
    --retain_pfam_hits /results/pfam.domtblout \
    --retain_blastp_hits /results/blastPep.outfmt6
    1>ppp.out
o
