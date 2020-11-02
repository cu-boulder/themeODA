#' A wrapper for ggplot2::discrete scale which applies the CU Boulder ODA brand palette
#'
#' @param primary A string indicating the name of the primary color to use (defaults to gold)
#' @param other A string indicating the name of the other color to use (defaults to black)
#' @param ... Pass-through arguments for ggplot2::discrete_scale
#' @return A ggplot2 discrete color scale
#' @export

scale_fill_oda = function(primary = "gold",other = "black",...) {
  ggplot2::discrete_scale("fill", "oda",oda_pal(primary, other),...)
}

