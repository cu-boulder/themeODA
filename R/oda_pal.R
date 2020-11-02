#' A wrapper for ggplot2::discrete scale which applies the CU Boulder ODA brand palette
#'
#' @param primary A string indicating the name of the Primary color to use (defaults to Gold)
#' @param other A string indicating the name of the Other color to use (defaults to Black)
#' @param discrete A boolean which determines if the returned palette is discrete or not. Defaults to true.
#' @return A palette function corresponding to the CU Boulder ODA brand colors
#' @export

# useful resource: https://www.garrickadenbuie.com/blog/custom-discrete-color-scales-for-ggplot2/
oda_pal = function(primary="Gold", other="Black", discrete=TRUE) {
    colors = oda_colors[-(1:3)]

    if (discrete) {
        function(n) {
            if (n > 6) {warning(paste0("Branded Color Palette only has ",length(colors)," colors."))}

            if (n == 2) {
                other = if (!other %in% names(colors)) { other } else { colors[other] }

                color_list = c(other, colors[primary])
            }

            else if (n == 1){
                color_list = c(colors[primary])
            }

            else {
                color_list = colors[1:n]
            }

            color_list = unname(unlist(color_list))

            return(color_list)
        }
    }

    else {
        function(n) {
            endpts = c(colors[[primary]],colors[[other]])
            return(colorRamp(endpts,space='rgb')((1:n)/n))
        }

    }

}

