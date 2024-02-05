# IOR

This is an I/O benchmarking using the ior benchmark.

**Configuration:**
1. The block size is 4 Gigabytes.
2. Each task or CPU is writing 4 Giga so the total size to be written is (4* number of tasks).
3. Syncing twice to write all unwritten system buffers to disk including modified i-nodes, delayed block I/O, and read-write mapped files


**Preparing the environement:**
```console 
git clone git@github.com:NYUAD-CRC/Benchmarking.git 
cd Benchmarking/IOR_Benchmarking/
mkdir -p slurm
```
**Testing multiple nodes with 16k block size:**
1. Create the output directory:
    ```console
    mkdir -p 16k_multiple_nodes/log
     ```
2. For each number of nodes (2,4,8,10,12,14), do the following:
    1. Modify **apps_run.sh** to make **-N** equals the number of nodes (2,4,8,10,12,14).
    2. Modify **apps_run.sh** to make **-n** equals the number of nodes * 32(number of tasks per node).
        1. Example for N=2, n=64(2*32)
    3. Change **-q** according to these [limits](https://crc-docs.abudhabi.nyu.edu/hpc/jobs/quick_start.html#partitions-summary) in **apps_run.sh**.
3. Submit **apps_run.sh**  with needed arguments 
    ```console
    sbatch apps_run.sh output_directory Block_size_in_KB
     ```
    For exmaple: Using **16k** block size and output directory **16k_multiple_nodes**
    ```console
    sbatch apps_run.sh 16k_multiple_nodes 16
     ```

**Testing one node with different block sizes:**
1. For each block size (16k,32k,64k,128k), do the following:
    1. mkdir -p $block_size_one_node/log
    ```console
    mkdir -p 16k_one_node/log
    mkdir -p 32k_one_node/log
    mkdir -p 64k_one_node/log
    mkdir -p 128k_one_node/log
     ```
2. For each number of processes (15,30,45,60,75,90,105,120), do the following:
    1. Modify **one_node_apps_run.sh** to make **-n** equals the number of processes (15,30,45,60,75,90,105,120).
    2. Change **-q** according to these [limits](https://crc-docs.abudhabi.nyu.edu/hpc/jobs/quick_start.html#partitions-summary) in **one_node_apps_run.sh**
2. Submit **one_node_apps_run.sh**  with needed arguments 
    ```console
    sbatch one_node_apps_run.sh output_directory Block_size_in_KB
     ```
    For exmaple: Using **32k** block size and output directory **32k_one_node**
    ```console
    sbatch one_node_apps_run.sh 32k_one_node 32
     ```

