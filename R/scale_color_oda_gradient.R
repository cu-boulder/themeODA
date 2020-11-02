#' A which applies the CU Boulder ODA brand palette as a ggplot gradient
#'
#' @param low A string indicating the name of the color to use for low values of the gradient (defaults to black)
#' @param high A string indicating the name of the color to use for high values of the gradient (defaults to gold)
#' @param med An optional argument specifying a third color for the mid-range values of the gradient (defaults to NA). If not provided a two-color gradient will be returned
#' @param ... Pass-through arguments for ggplot2::gradient or ggplot2::gradientn
#' @return A ggplot2 gradient
#' @export

scale_color_oda_gradient = function(low='black',mid=NA,high='gold',...){
  if (mid %in% names(oda_colors)){
    scale_colour_gradientn(colors=c(oda_colors[[low]],oda_colors[[mid]],oda_colors[[high]]),...)
  }

  else {
    scale_colour_gradient(low=oda_colors[[low]],high=oda_colors[[high]],...)
  }
}
