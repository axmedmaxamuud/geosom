#' Load Administrative Shapes
#'
#' @param level specefiy which shapefile to load.
#' and must be one of `"admin0", "admin1", admin2", "states"`
#'
#' @returns An `sf` object containing spatial data
#' @export
#'
#' @examples
get_admin_shape <- function(level = c("admin0", "admin1", "admin2", "states")) {
  level <- match.arg(level)

  # Each dataset is stored as a .rda object in the package namespace
  get(level, envir = asNamespace("geosom"))
}

