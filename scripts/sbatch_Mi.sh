#!/usr/bin/bash
#SBATCH --partition=short               # choose from debug, express, or short
#SBATCH --job-name=trinity
#SBATCH --time=24:00:00                 # the code pieces should run in far less than 1 hour
#SBATCH -N 1                            # nodes requested
#SBATCH -n 4                            # task per node requested
#SBATCH --mem=20Gb
#SBATCH --exclusive
#SBATCH --output="batch-%x-%j.output"   # where to direct standard output; will be batch-jobname-jobID.output
#SBATCH --mail-type=ALL
#SBATCH --mail-user=kandru.b@northeastern.edu # Update to your user name!

# Usage: sbatch sbatch_transcriptome.sh
# Assumes input data is in /scratch/kandru.b/fp_f2022_binf6308_sec3-bhavithakandru/data/trimmed/

echo "Starting our analysis $(date)"  

echo "Loading our BINF6308 Anaconda environment, which includes Trinity."
module load anaconda3/2021.11
source activate BINF-12-2021
echo "Loading samtools."
module load samtools/1.10

echo "Starting De Novo Assembly $(date)"
echo "Assemble the De Novo Transcriptome $(date)"
bash scripts/MitrinityDeNovo.sh 1>results/logs/$SLURM_JOB_NAME-$SLURM_JOB_ID-MitrinityDeNovo.log 2>results/logs/$SLURM_JOB_NAME-$SLURM_JOB_ID-MitrinityDeNovo.err

echo "Analyze the De Novo Transcriptome $(date)"
bash scripts/MianalyzeTrinityDeNovo.sh 1>results/$SLURM_JOB_NAME-$SLURM_JOB_ID-Mitrinity_de_novo_stats.txt 2>results/logs/$SLURM_JOB_NAME-$SLURM_JOB_ID-MianalyzeTrinityDeNovo.err

echo "De Novo Assembly complete $(date)"

