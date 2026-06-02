#' Export Map
#'
#' @param plot
#' @param filename
#' @param path
#' @param format
#' @param page_size
#' @param orientation
#' @param width
#' @param height
#' @param dpi
#'
#' @returns
#' @export
#'
#' @examples
export_map <- function(plot,
                       filename,
                       path = "outputs/maps",
                       format = c("pdf"),
                       page_size = "A4",
                       orientation = "landscape",
                       width = NULL,
                       height = NULL,
                       dpi = 300) {

  # Create folder if it doesn't exist
  if (!dir.exists(path)) {
    dir.create(path, recursive = TRUE)
  }

  # Default page sizes (in inches)
  if (page_size == "A4") {
    if (orientation == "landscape") {
      width  <- width  %||% 11.69
      height <- height %||% 8.27
    } else {
      width  <- width  %||% 8.27
      height <- height %||% 11.69
    }
  }

  # Loop through requested formats
  for (f in format) {

    file_out <- file.path(path, paste0(filename, ".", f))

    device <- switch(
      f,
      pdf = cairo_pdf,
      png = "png",
      svg = "svg"
    )

    ggplot2::ggsave(
      filename = file_out,
      plot = plot,
      device = device,
      width = width,
      height = height,
      units = "in",
      dpi = dpi
    )

    message("Map saved to: ", file_out)
  }
}
