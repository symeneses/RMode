#' Plot numerical data highlighting the mode
#'
#' This function allows you to do a boxplot of your data and draw a vertical line where the mode is located
#' @param x R object
#' @keywords mode
#' @export
#' @examples
#' myNumbers <- c(7,6,6,10,6,6,7,3,7,14,20,7)
#' myPlotMode(myNumbers, col = "blue")

myPlotMode <- function(x, ...) { 
  
  boxplot(x, ...)
  
  # Vertical line showing the mode
  abline(h = myMode(x), col="gray67", lwd = 2 , lty = 2)
}
