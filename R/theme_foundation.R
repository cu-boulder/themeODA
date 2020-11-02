theme_foundation = function (base_size = 12, base_family = "") {
    thm = ggplot2::theme_grey(base_size = base_size, base_family = base_family)
    for (i in names(thm)) {
        if ("colour" %in% names(thm[[i]])) {
            thm[[i]]["colour"] = list(NULL)
        }
        if ("fill" %in% names(thm[[i]])) {
            thm[[i]]["fill"] = list(NULL)
        }
    }
    thm + ggplot2::theme(panel.border = ggplot2::element_rect(fill = NA), legend.background = ggplot2::element_rect(colour = NA),
        line = ggplot2::element_line(colour = "black"), rect = ggplot2::element_rect(fill = "white",
            colour = "black"), text = ggplot2::element_text(colour = "black"))
}
