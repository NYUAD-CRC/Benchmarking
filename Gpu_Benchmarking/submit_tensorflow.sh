#!/bin/bash

#Define the resource requirements here using #SBATCH

#For requesting 10 CPUs
#SBATCH -c 10

#Max wallTime for the job
#SBATCH -t 1:00:00

#Resource requiremenmt commands end here


#activate any environments if required
conda activate tf_gpu_new

#Execute the code
cd /scratch/apps/Benchmarking/Gpu_Benchmarking
python bench_tensorflow.py
