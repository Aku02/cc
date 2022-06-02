# cc
 compute


singularity run --nv conda.sif

singularity run --nv --bind /scratch:/home/akash02 scratch/conda.sif

$ sudo singularity build --nv --nvccli --sandbox test conda.sif

singularity shell --nv --nvccli conda.sif

srun --mem=16G --cpus-per-task=2 --time=3:0:0 --gres=gpu:t4:1 --pty bash


singularity run --nv --nvccli --bind cc:/user_mnt cc/test/ 

sudo singularity run --nv --nvccli --writable --bind cc:/root cc/product/

sudo singularity run --nv banmo.sif
sudo singularity run --nv --nvccli --writable --bind cc:/root cc/test/



sudo singularity build --nv --nvccli --rocm product/ Singularity.def


sudo singularity build --nv --nvccli banmo.sif --tmpdir=$SINGULARITY_TMPDIR docker-daemon://banmo:latest

sudo singularity build --nv --sandbox --nvccli --rocm test/ Singularity.def

ERROR conda.core.link:_execute(699): An error occurred while installing package 'conda-forge::cudatoolkit-dev-11.3.1-py39h3811e60_0'.