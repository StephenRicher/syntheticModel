#!/usr/bin/env bash

config=/home/u/sr467/scratch/projects/syntheticModel/config/configSynthetic.yaml
cluster_config=/home/u/sr467/scratch/projects/syntheticModel/config/clusterConfig.yaml
snakefile=/home/u/sr467/scratch/projects/MolecularDynamics/Snakefile
snakemake --profile slurm --use-conda -kp --notemp --snakefile "${snakefile}" \
          --cluster-config "${cluster_config}" --configfile "${config}" "${@}"
