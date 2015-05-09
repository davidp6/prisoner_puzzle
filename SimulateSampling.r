# ---------------------------------------------------------------------------------------------------------------------------
# David Phillips
# 5/8/2015
#
# Simulate the prisoners' names in boxes puzzle
# This script defines a function which runs through N trials of a given sampling strategy
# ---------------------------------------------------------------------------------------------------------------------------

# ----------------------------------------------------------------------------------------------------------------------------------------------------
# Function inputs:
# N					- Number of repetitions of sample
# SampleStrategy		- A function which selects boxes according to some predetermined strategy
#
# Function output:		- list containing:
# p					- Probability of success given sampling strategy
# successes			- A vector of length N, defining whether each trial was a success
# ----------------------------------------------------------------------------------------------------------------------------------------------------

# ---------------------------------------------------------------------------------------------------------------------------
# Define function
SimulateSampling = function(N=10, SampleStrategy='Random') {

	# print for user
	print(paste('Number of iterations:', N))
	print(paste('Sampling strategy:', SampleStrategy))

	# load box sampling strategy
	source(paste0('./', SampleStrategy, '.r'))

	# repeat the sampling process N times
	successes = lapply(seq(N), function(n) {
		
		# print iteration for user
		cat(paste(round(n/N*100), '%'))
		
		# assign prisoners boxes
		boxes = sample(x=seq(nPrisoners), size=nPrisoners, replace=FALSE)

		# sample boxes according to strategy
		sample = sampleBoxes(boxes)
		
		# check whether each prisoner drew his/her name
		drewSelf = lapply(seq(nPrisoners), function(p) { boxes[p] %in% sample[p,] })
		drewSelf = do.call(rbind, drewSelf)
		
		# check whether this trial was a success (everyone draw themself)
		success = mean(drewSelf)
		return(success==1)
	})
	successes = do.call(rbind, successes)
	
	# return outputs
	return(list(p=mean(successes), successes=successes))
}
# ---------------------------------------------------------------------------------------------------------------------------
