#' Function for Creating Sample Means
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
#'

sample_mean<- function(vec, n) {
  sample<-sample(vec, n, replace=TRUE)
  mean<- mean(sample)
  return(mean)
}