# --------------------------------------------------------------------------------------------------------------
# David Phillips
# 5/8/2015
#
# Simulate the prisoners' names in boxes puzzle
# This script defines a function for random sampling of boxes by the prisoners
# --------------------------------------------------------------------------------------------------------------

# ----------------------------------------------------------------------------------------------------------------------------------------------------
# Function inputs:
# boxes 			- a vector of boxes
# Function output:
# sample			- a matrix of whether each box was sampled by each prisoner
# ----------------------------------------------------------------------------------------------------------------------------------------------------

# ---------------------------------------------------------------------------------------------------------------------------
# Define function
sampleBoxes = function(boxes) {
	# loop over prisoners and make each of them select 50 random boxes
	sample = NULL
	for(p in seq(nPrisoners)) {
		currentSample = sample(x=seq(nPrisoners), size=sampleSize, replace=FALSE)
		sample = rbind(sample, currentSample)
	}
	rownames(sample) = NULL
	
	# return sample
	return(sample)
}
# ---------------------------------------------------------------------------------------------------------------------------
