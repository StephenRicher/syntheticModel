#!/usr/bin/env bash

config=/home/u/sr467/scratch/projects/syntheticModel/config/configSynthetic.yaml
cluster_config=/home/u/sr467/scratch/projects/syntheticModel/config/clusterConfig.yaml

snakemake --profile slurm --use-conda -kp --notemp \
          --cluster-config "${cluster_config}" --configfile "${config}" "${@}"
