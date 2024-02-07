# NAS-benchmark
This repository includes configuration, compilation and running bash scripts for NAS benchmark

**Steps:**
1. **./clean_config.sh** : This script is responsible for cleaning the environmenet and configuring compilation flags.
2. **./compile.sh** : This script is responsible for compilating the different benchmarks with the available classes.
3. **./new_run.sh**: This script is responsible for running the different benchmarks with the available classes, it takes the benchmark/s,class/es and number of cores as arguments.


**Interactive run on the compute node:**
```console 
new_run.sh is S 16
```
This command is to run **is** benchmark with class **S** and **16** cores.

**Non interactive run using sbatch:**
```console 
sbatch -n 16 new_run.sh is S 16
```
This command is to run **is** benchmark with class **S** and **16** cores.


**Testing on Jubail with class D:**
```console 
sbatch -n 256  -N 2 -o IS_D_256.out -p devel new_run.sh is D 256 
sbatch -n 256  -N 2 -o EP_D_256.out -p devel new_run.sh ep D 256
sbatch -n 256  -N 2 -o CG_D_256.out -p devel new_run.sh cg D 256
sbatch -n 256  -N 2 -o MG_D_256.out -p devel new_run.sh mg D 256
sbatch -n 256  -N 2 -o FT_D_256.out -p devel new_run.sh ft D 256
sbatch -n 256  -N 2 -o BT_D_256.out -p devel new_run.sh bt D 256
sbatch -n 256  -N 2 -o SP_D_256.out -p devel new_run.sh sp D 256
sbatch -n 256  -N 2 -o LU_D_256.out -p devel new_run.sh lu D 256
```

**Testing on Bergamo with class D:**
```console 
sbatch -n 256  -o IS_D_256.out --reservation=apps new_run.sh is D 256
sbatch -n 256  -o EP_D_256.out --reservation=apps new_run.sh ep D 256
sbatch -n 256  -o CG_D_256.out --reservation=apps new_run.sh cg D 256
sbatch -n 256  -o MG_D_256.out --reservation=apps new_run.sh mg D 256
sbatch -n 256  -o FT_D_256.out --reservation=apps new_run.sh ft D 256
sbatch -n 256  -o BT_D_256.out  --reservation=apps new_run.sh bt D 256
sbatch -n 256  -o SP_D_256.out --reservation=apps new_run.sh sp D 256
sbatch -n 256  -o LU_D_256.out --reservation=apps new_run.sh lu D 256
```

**Testing interactively on Bergamo with class D:**
```console 
screen.sh "all_run.sh"
```
**all_run.sh** : include commands to run all the benchmarks using the **bergamo_run.sh** script.
