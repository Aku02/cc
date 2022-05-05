#!/bin/bash
#SBATCH --time=03:00:00
#SBATCH --account=def-gigor
#SBATCH --cpus-per-task=1             # CPU cores/threads
#SBATCH --gres=gpu:t4:1                # Number of GPUs (per node)
#SBATCH --output=./output/%j.out   # STDOUT
#SBATCH --array=1-1%1   # 4 is the number of jobs in the chain
singularity build conda.sif Singularity.def