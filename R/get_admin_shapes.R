#' Load Somalia Administrative Boundary Data
#'
#' This function loads Somalia boundary datasets included in the `geosom` package.
#' Available boundary levels include national boundary, administrative level 1,
#' administrative level 2, and state boundaries.
#'
#' @param level Character. Boundary level to load. Must be one of:
#'   `"admin0"`, `"admin1"`, `"admin2"`, or `"states"`.
#'
#' @return An `sf` object containing Somalia boundary data.
#'
#' @export
#'
#' @examples
#' som_admin1 <- get_admin_shape("admin1")
#' head(som_admin1)
#'
#' som_districts <- get_admin_shape("admin2")
#' plot(som_districts["admin2name"])
get_admin_shape <- function(level = c("admin0", "admin1", "admin2", "states")) {
  level <- match.arg(level)

  data_obj <- switch(
    level,
    admin0 = admin0,
    admin1 = admin1,
    admin2 = admin2,
    states = states
  )

  data_obj
}
