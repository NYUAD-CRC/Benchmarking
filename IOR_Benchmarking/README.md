# IOR

This is an I/O benchmarking using the ior benchmark.

**Configuration:**
1. The block size is 4 Gigabytes.
2. Each task or CPU is writing 4 Giga so the total size to be written is 4*#of tasks.
3. Syncing twice to write all unwritten system buffers to disk including modified i-nodes, delayed block I/O, and read-write mapped files


**Preparing the environement:**
```console 
git clone git@github.com:NYUAD-CRC/Benchmarking.git 
cd Benchmarking/IOR_Benchmarking/
mkdir -p slurm
mkdir -p 16k_multiple_nodes/log
mkdir -p 16k_one_node/log
mkdir -p 32k_one_node/log
mkdir -p 64k_one_node/log
mkdir -p 128k_one_node/log
```
