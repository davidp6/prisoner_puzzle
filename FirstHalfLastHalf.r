# -------------------------------------------------------------------------------------------------------------------------------------------
# David Phillips
# 5/8/2015
#
# Simulate the prisoners' names in boxes puzzle
# This script defines a function for "first/last half" sampling of boxes by the prisoners
# Basically, every other prisoner selects the first half of the boxes and the rest select the last half
# -------------------------------------------------------------------------------------------------------------------------------------------

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
		if (p/2==floor(p/2)) currentSample = seq(sampleSize)
		else currentSample = (sampleSize+1):nPrisoners
		sample = rbind(sample, currentSample)
	}
	rownames(sample) = NULL
	
	# return sample
	return(sample)
}
# ---------------------------------------------------------------------------------------------------------------------------
