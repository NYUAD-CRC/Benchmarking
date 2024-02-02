#! /bin/bash

#conda create -n tf_gpu_new
conda install python=3.11
python3 -m pip install tensorflow[and-cuda]
python3 -m pip install matplotlib

