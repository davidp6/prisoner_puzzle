# -----------------------------------------------------------------------------------------------------------------
# David Phillips
# 9/17/2015
#
# Simulate the prisoners' names in boxes puzzle
# This script defines a function for permutation cycling of boxes by the prisoners
# -----------------------------------------------------------------------------------------------------------------

# ----------------------------------------------------------------------------------------------------------------------------------------------------
# Function inputs:
# boxes 			- a vector of boxes
# Function output:
# sample			- a matrix of whether each box was sampled by each prisoner
# ----------------------------------------------------------------------------------------------------------------------------------------------------

# ---------------------------------------------------------------------------------------------------------------------------
# Define function
sampleBoxes = function(boxes) {
	# loop over prisoners and make each of them select their own box, then the box indicated by its contents etc
	sample = NULL
	for(p in seq(nPrisoners)) {
		# initialize box to select, every prisoner starts with his own box
		currentBox = p
		currentSample = NULL
		
		# run sampleSize trials
		for (t in 1:sampleSize) {
			# look insde the selected box
			boxContents = boxes[currentBox]
			
			# add what was found to the list
			currentSample = c(currentSample, boxContents)
			
			# check the box represented by the current box's contents next
			currentBox = boxContents
		}
		sample = rbind(sample, currentSample)
	}
	rownames(sample) = NULL
	
	# return sample
	return(sample)
}
# ---------------------------------------------------------------------------------------------------------------------------
