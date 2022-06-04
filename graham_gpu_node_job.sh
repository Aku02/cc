#!/bin/bash
#SBATCH --time=00:05:00
#SBATCH --job-name=test
#SBATCH --account=def-gigor
#SBATCH --cpus-per-task=1            
#SBATCH --gres=gpu:t4:1               
#SBATCH --mem=1000M                   
#SBATCH --output=./%x-%j.out
#SBATCH --mail-user=akash.karthikeyan@mail.utoronto.ca
#SBATCH --mail-type=ALL
#SBATCH --array=1-1%1   # 1 is the number of jobs in the chain
nvidia-smi
source activate banmo-cu113

which python
python script.py
