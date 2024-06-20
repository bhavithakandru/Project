## Project

# Genome Assembly, Transcriptome Assembly, Gene Annotation and Protein Prediction for Cholerae Genome.

## Author
Bhavitha Naga Sai Kandru

## Date Created
11-dec-2022

## Objective:
The objective of the pipeline was to execute genome assembly, transcriptome assembly, gene annotation, and protein prediction for a selected cholerae genome. Several tools were utilized, including Spades, Quast, Trimmomatic, GMAP, GSNAP, Trinity, BLAST, and TransDecoder. The outcome of this process is to facilitate the prediction of proteins and their corresponding functions.

## Overview
To collect Dna and Rna sequences from selected organism and perform trim,Build,transdeoding.

## Running
#### ./trim.sh
#### ./runSpades.sh
#### ./runQuast.sh
#### ./trimRna.sh
#### ./MiBuild.sh
#### sbatch scripts/sbatch_Mi.sh
#### sbatch scripts/sbatch_transdecoder.sh

## Test
This test is to run the spades,trim,trinity, blast and transdecorder files for the choosen organism.

## Tools:
#### Trinity
#### Blast
#### Bash
#### spades
#### trim
#### gsnap
#### trimmomatic
