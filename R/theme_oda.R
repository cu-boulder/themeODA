#' A basic CU Boulder branded ggplot2 theme for CU Boulder oda
#'
#' @param base_size The base size of all text in the plot. Title will be 1.5 times larger than this. Defaults to 12pt.
#' @param base_family A string indicating the base font family for all text in the plot. CU Boulder style guide indicates Helvetica should be used, which is the default (presuming the R `sans` font family has not been changed by the user)
#' @param legend A boolean indicating whether a legend should be included in the plot. Defaults to TRUE.
#' @return A ggplot2 theme
#' @export

theme_oda = function (base_size = 12, base_family = "sans",legend=TRUE) {
    legend.pos = if(legend){'right'} else {'none'}

    colors = oda_colors
    (theme_foundation(base_size = base_size, base_family = base_family) +
        ggplot2::theme(line = ggplot2::element_line(colour = "black"),
              rect = ggplot2::element_rect(fill = colors[["light gray"]], linetype = 0, colour = NA),
              text = ggplot2::element_text(colour = colors[["dark gray"]]),
              axis.title = ggplot2::element_text(),
              axis.text = ggplot2::element_text(),
              axis.ticks = ggplot2::element_blank(),
              axis.line = ggplot2::element_blank(),
              legend.background = ggplot2::element_rect(),
              legend.position = legend.pos,
              legend.direction = "vertical",
              legend.box = "horizontal",
              panel.grid = ggplot2::element_line(colour = NULL),
              panel.grid.major = ggplot2::element_line(colour = colors[["medium gray"]]),
              panel.grid.minor = ggplot2::element_blank(),
              plot.title = ggplot2::element_text(hjust = 0, size = ggplot2::rel(1.5), face = "bold"),
              plot.margin = ggplot2::unit(c(1, 1, 1, 1), "lines"),
              strip.background = ggplot2::element_rect())
    )
}
