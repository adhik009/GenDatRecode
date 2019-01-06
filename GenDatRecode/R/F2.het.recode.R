######### FUNCTION TO RECODE HETEROZYGOTES IN A F2 POPULATION #################
# Five arguments needed
# 1) A matrix of genotypic data
# 2) Code of missing data
# 3) Code of P1.call
# 4) Code of P2.call
# 5) Code of Heterozygote, which the function needs to change to For eg. 'H'

###### Beginning of function F2.het.recode ###########
F2.het.recode <- function(gendat.mat, missing.data.recode, P1.call, P2.call, Het.call){
  for(i in 1:nrow(gendat.mat)){
    for(j in 4:ncol(gendat.mat)){ 
      if(gendat.mat[i,j] != missing.data.recode && 
         gendat.mat[i,j] != P1.call && 
         gendat.mat[i,j] != P2.call){
        gendat.mat[i,j] <- Het.call}
    }
  }
  return(gendat.mat)
}
###### End of function F2.het.recode
