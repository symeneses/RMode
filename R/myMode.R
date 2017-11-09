#' Mode
#'
#' This function allows you to calculate the mode.
#' @param x R object
#' @return The mode of \code{x}.
#' @keywords mode
#' @export
#' @examples
#' myNumbers <- c(7,6,6,10,6,6,7,3,7,14,20,7)
#' myMode(myNumbers)

myMode <- function(x){
  # Create a frequency table
  freqTable <- table(x)
  
  # Order the table to get the higher frequency in the first position
  freqTable <- sort(freqTable, decreasing = TRUE)
  
  # Take the first name in the ordered table
  mode <- names(freqTable)[1]
  
  if (is.numeric(x)){
    mode <- as.numeric(mode)
  }
  
  return(mode)
}