#!/bin/bash

#Define the resource requirements here using #SBATCH

#For requesting 10 CPUs
#SBATCH -c 10

#Max wallTime for the job
#SBATCH -t 1:00:00

#Requesting one A100 GPU card
#SBATCH -p nvidia
#SBATCH --gres=gpu:a100:1

#Setting up job name
#SBATCH -J jobname
#SBATCH -o Results_a100/output_%j.log

#Resource requiremenmt commands end here


#activate any environments if required
source /share/apps/NYUAD5/miniconda/3-4.11.0/bin/activate
conda activate tf_gpu_new
#conda activate tensorflow-2.4.1

#Execute the code
cd /scratch/apps/Benchmarking/Gpu_Benchmarking
python bench_tensorflow.py

#Change output file name to include date
time=`date +%Y%m%d-%H%M%S`
mv Results_a100/output_$SLURM_JOB_ID.log Results_a100/${time}_output.log
