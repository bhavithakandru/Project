#!/usr/bin/env bash
# AipBuild.sh
# Usage: bash scripts/AipBuild.sh 1>results/logs/AipBuild.log 2>results/logs/AipBuild.err &

gmap_build -D data \
-d MiSeqGmapDb \
/scratch/kandru.b/fp_f2022_binf6308_sec3-bhavithakandru/cholerae/scaffolds.fasta
