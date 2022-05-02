#!/bin/bash
#SBATCH --nodes=1
#SBATCH --gpus-per-node=p100:2
#SBATCH --ntasks-per-node=32
#SBATCH --mem=127000M
#SBATCH --time=3:00
#SBATCH --account=def-gigor
nvidia-smi
