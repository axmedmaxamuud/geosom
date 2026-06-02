#' Get Somalia Administrative Names
#'
#' Returns names and codes from Somalia administrative boundary datasets.
#'
#' @param level Character. Boundary level to use. Must be one of:
#'   `"admin0"`, `"admin1"`, `"admin2"`, or `"states"`.
#'
#' @return A data frame with administrative names and codes where available.
#'
#' @export
#'
#' @examples
#' get_admin_names("admin1")
#' get_admin_names("admin2")
get_admin_names <- function(level = c("admin0", "admin1", "admin2", "states")) {
  level <- match.arg(level)

  x <- get_admin_shape(level)

  if (level == "admin0") {
    return(sf::st_drop_geometry(x[, c("admin0name", "admin0pcod")]))
  }

  if (level == "admin1") {
    return(sf::st_drop_geometry(x[, c("admin1name", "admin1pcod", "admin0name")]))
  }

  if (level == "admin2") {
    return(sf::st_drop_geometry(x[, c("admin2name", "admin2pcod", "admin1name", "admin1pcod")]))
  }

  if (level == "states") {
    return(sf::st_drop_geometry(x[, c("StateName", "name")]))
  }
}
