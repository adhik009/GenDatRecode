##################################################################################
##################################################################################

######## Beginning of "P1_recode" function #################

# Two arguments needed
# 1) A matrix of genotypic data with markers in rows and individuals in columns.
##### First column corresponds to marker names, second column to Parent 1 and third column to Parent 2
# 2) P1.call - Whatever the genotype calls that match to parent1 should be recoded to.

##############################################################
##############################################################
# NOTE: REMEMBER TO START WITH PARENT WHICH NEEDS TO BE CODED B. IF ONE OF THE GENOTYPE CALLS IS A AND YOU RECODE
# ONE OF THE PARENTS TO A. THERE WILL BE A PROBLEM.

P1_recode <- function(gendat.mat, P1.call) {
  for(i in 1:nrow(gendat.mat)){
    for(j in 4:ncol(gendat.mat)){ 
      if(gendat.mat[i,j] == gendat.mat[i,3]){
        gendat.mat[i,j] <- P1.call}
    }
  }
  return(gendat.mat)
}

# End of P1_recode function

