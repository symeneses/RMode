#' Mode
#'
#' This function allows you to calculate multiples mode if your data is multimodal.
#' @param x R object
#' @param multiple TRUE will retur multiple variables, FALSE will show only one of the modes. Defaults to FALSE.
#' @return A list with the mode of \code{x}.
#' @keywords mode
#' @export
#' @examples
#' myNumbers <- c(7,6,6,10,6,6,7,3,7,14,20,7)
#' myMultipleMode(myNumbers)
#' myMultipleMode(myNumbers, TRUE)

myMultipleMode <- function(values, multiple = FALSE){
  # Create a frequency table
  freqTable <- table(values)
  
  # Order the table to get the higher frequency in the first position
  freqTable <- sort(freqTable, decreasing = TRUE)
  
  # Take the first name in the ordered table
  mode <- names(freqTable)[1]
  mode_mult <- names(freqTable[freqTable == freqTable[1]])
  
  if (multiple == FALSE) {
    return(list(mode, unname(freqTable[1])))
  } else{
    return(list(mode_mult, unname(freqTable[1])))
  }
}