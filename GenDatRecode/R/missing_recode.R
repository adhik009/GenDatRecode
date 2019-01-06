################ Beginning of the missing_recode function ########################

# Arguments needed
# 1 - A matrix of genotypic data with markers in rows and individuals in columns
# First column corresponds to marker names, second column to Parent 1 and third column to Parent 2
# 2 - missing.data.recode - Object to be changed to, for example if you want missing data to be changed to 'NA' or '0', this is
# the place to specify it.
# 3 - missing.data - Argument that specifies how the missing data is coded now in the original genotypic data

###### Begin function

missing_recode <- function(gendat.mat, missing.data.recode, missing.data) {
  for(i in 1:nrow(gendat.mat)){
    for(j in 4:ncol(gendat.mat)){
      if(gendat.mat[i,j] == missing.data) 
        gendat.mat[i,j] <- missing.data.recode
    }
  }
  return(gendat.mat)
}
############### End of the function ########################
