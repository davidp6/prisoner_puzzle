# ---------------------------------------------------------------------------------------------------------------------------
# David Phillips
# 5/8/2015
#
# Simulate the prisoners' names in boxes puzzle
# This script runs all
# ---------------------------------------------------------------------------------------------------------------------------


# -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# INSTRUCTIONS: 
# User must navigate to the directory in which this code lives before executing. It is assumed that all peices of code are in the same location
# Implementation of a new sampling strategy requires a function to define it. Pass the name of the function to SimulateSampling.r and it will run
# -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# -------------------------------------------------------------------------------------------------------------------------
# Set up R
rm(list=ls())
set.seed(1)
# -------------------------------------------------------------------------------------------------------------------------

# ------------------------------------------------------------------------
# Problem parameters

# number of prisoners
nPrisoners = 100

# number of boxes each prisoner is allowed to view
sampleSize = nPrisoners/2
# ------------------------------------------------------------------------

# ---------------------------------------------------------------------------------------------------------------------------
# Load functions

# function that simulates the sampling process
source('./SimulateSampling.r')

# functions that define sampling strategy are sourced inside SimulateSampling.r
# ---------------------------------------------------------------------------------------------------------------------------

# ---------------------------------------------------------------------------------------------------------------------------
# Execute simulation

# random sampling
# RandomSimulation = SimulateSampling(N=1000, SampleStrategy='Random')

# FirstHalfLastHalf sampling
# RandomSimulation = SimulateSampling(N=1000, SampleStrategy='FirstHalfLastHalf')
# print(paste('Probability of success:', RandomSimulation$p))

# Permutation cycling
PermutationCyclingSimulation = SimulateSampling(N=1000, SampleStrategy='PermutationCycling')
print(paste('Probability of success:', PermutationCyclingSimulation$p))
# ---------------------------------------------------------------------------------------------------------------------------
