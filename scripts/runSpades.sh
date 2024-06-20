#!/usr/bin/env bash
# runSpades.sh
# Usage: bash scripts/runSpades.sh 1>results/logs/runSpades.log 2>results/logs/runSpades.err
mkdir -p "cholerae/"

function Spades {
    spades.py \
    -1 ../data/trimmed/cholerae.R1.paired.fastq \
    -2 ../data/trimmed/cholerae.R2.paired.fastq \
    -o cholerae 1>../results/logs/runSpades.log 2>../results/logs/runSpades.err
}

Spades # runs the function Spades
