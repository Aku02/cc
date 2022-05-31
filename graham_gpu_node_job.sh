#!/bin/bash
#SBATCH --time=00:05:00
#SBATCH --job-name=test-env
#SBATCH --account=def-gigor
#SBATCH --cpus-per-task=1             # CPU cores/threads
#SBATCH --gres=gpu:p100:1                # Number of GPUs (per node)
#SBATCH --mem=1000M                   # memory per node
#SBATCH --output=./%x-%j.out
#SBATCH --array=1-1%1   # 1 is the number of jobs in the chain

# Load Singularity
module load StdEnv/2020
module load singularity

nvidia-smi

SING_IMG=/home/akash02/projects/def-gigor/singularity/banmo.sif

singularity shell --nv $SING_IMG /bin/bash
# export /opt/conda/bin>:$PATH
source activate banmo-cu113
