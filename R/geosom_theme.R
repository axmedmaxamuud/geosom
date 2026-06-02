#' geosom theme
#'
#' @param base_size
#' @param base_family
#'
#' @returns
#' @export
#'
#' @examples
geosom_theme <- function(base_size = 12, base_family = "") {

  ggplot2::theme_void(base_size = base_size, base_family = base_family) +
    ggplot2::theme(

      # Plot spacing
      plot.margin = ggplot2::margin(t = 12, r = 14, b = 10, l = 14),

      # Title hierarchy
      plot.title = ggplot2::element_text(
        size = base_size * 1.35,
        face = "bold",
        hjust = 0,
        margin = ggplot2::margin(b = 4)
      ),

      plot.subtitle = ggplot2::element_text(
        size = base_size,
        hjust = 0,
        margin = ggplot2::margin(b = 10)
      ),

      # Caption styling
      plot.caption = ggplot2::element_text(
        size = base_size * 0.75,
        color = "grey40",
        hjust = 0,
        margin = ggplot2::margin(t = 10)
      ),
      plot.caption.position = "plot",

      # Legend styling (compact, top-aligned)
      legend.position = "top",
      legend.justification = "left",
      legend.direction = "horizontal",
      legend.title = ggplot2::element_blank(),
      legend.text = ggplot2::element_text(
        size = base_size * 0.8,
        color = "grey25"
      ),
      legend.key.height = grid::unit(4, "mm"),
      legend.key.width  = grid::unit(6, "mm"),
      legend.spacing.x = grid::unit(4, "mm"),
      legend.box.spacing = grid::unit(2, "mm"),
      legend.background = ggplot2::element_blank(),

      # Clean white canvas
      panel.background = ggplot2::element_rect(fill = "white", color = NA),
      plot.background  = ggplot2::element_rect(fill = "white", color = NA)
    )
}


