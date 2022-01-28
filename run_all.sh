#!/bin/bash

# To check exit code for each arry job 
# qhist -j 2667681 -l


MODEL_RUNS=$(qsub submit_model_runs.pbs)

echo "Submitted " $MODEL_RUNS

qsub -W depend=afterok:$MODEL_RUNS submit_filter.pbs
