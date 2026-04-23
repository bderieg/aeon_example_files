#! /bin/bash
#SBATCH --time=72:00:0
#SBATCH --account=belz
#SBATCH --partition=kingspeak
#SBATCH --nodes=1
#SBATCH --ntasks=5
#SBATCH --mem=8G
#SBATCH --job-name=sphgauss
#SBATCH -o ./output/sphgauss.out
#SBATCH -e ./output/sphgauss.err

module load rust/1.87.0

cargo build --release --package asphere

cargo run --release --package asphere -- search config/sphgauss
