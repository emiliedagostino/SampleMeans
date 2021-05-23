#' Function for Creating Many Sample Means
#'
#'
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#' 
#' 
#' 
#'
#' @export

many_sample_means<- function(vec, n, reps=1000) {
  many_sample_means1<-replicate(reps, sample_mean(vec, n))
  as.vector(many_sample_means1)
  
  return(many_sample_means1)
}