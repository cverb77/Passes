#!/bin/bash -e

#SBATCH --job-name=PythonExample
#SBATCH --ntasks=1
#SBATCH --time=00:10:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=cv7dn@richmond.edu

#SBATCH --partition=basic
#SBATCH --mem=24000
#SBATCH --cpus-per-task=4

# Print the simulation start date/time
date

# Print the node the simulation is running on
echo "I ran on:"
echo "SLURM_NODELIST=$SLURM_NODELIST"

# Return the context/PWD to the directory where *this* file is located.
cd /home/cv7dn/

# Load the necessary program libraries

# Run jobs
output_dir=/home/cv7dn/slurmTest/
mkdir -p $output_dir
/usr/bin/time -v python test.py > $output_dir/output.csv

# Print the simulation end date/time
date