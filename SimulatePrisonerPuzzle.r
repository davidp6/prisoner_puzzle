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


# ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Prompt: 
#
# The names of 100 prisoners are placed in 100 wooden boxes, one name to a box, and the boxes are lined up on a table in a room.
# One by one, the prisoners are led into the room; each may look in at most 50 boxes, but must leave the room exactly as he found it and is permitted no further communication with the others.
# The prisoners have a chance to plot their strategy in advance, and they are going to need it, because unless every single prisoner finds his own name all will subsequently be executed.
# Find a strategy for them which has probability of success exceeding 30%.
# ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
RandomSimulation = SimulateSampling(N=1000, SampleStrategy='Random')
print(paste('Probability of success:', RandomSimulation$p))

# ---------------------------------------------------------------------------------------------------------------------------
