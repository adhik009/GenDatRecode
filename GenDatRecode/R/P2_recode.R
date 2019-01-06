
#################################################################################
#################################################################################

############## Beginning of P2_recode function ###########################

# Arguments needed
# A matrix of genotypic data with markers in rows and individuals in columns
# First column corresponds to marker names, second column to Parent 1 and third column to Parent 2

P2_recode <- function(gendat.mat, missing.data.recode, P1.call, P2.call) {
  for(i in 1:nrow(gendat.mat)){
    for(j in 4:ncol(gendat.mat)){ 
      if(gendat.mat[i,j] != missing.data.recode && gendat.mat[i,j] != P1.call){
        gendat.mat[i,j] <- P2.call}
    }
  }
  return(gendat.mat)
}

################################################################################
################################################################################
