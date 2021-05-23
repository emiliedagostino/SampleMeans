#' Function for Creating Many Sample Means into a Dataframe
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

sample_means_ns<- function(vec, reps, ns){
  map<-map(ns, ~many_sample_means(vec, .x, reps))
  data_frame(
    mean=unlist(map), 
    n=rep(ns, reps)
  )
}