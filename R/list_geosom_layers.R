#' List Available geosom Boundary Layers
#'
#' Shows the boundary datasets available in the `geosom` package.
#'
#' @return A data frame with available layer names and descriptions.
#'
#' @export
#'
#' @examples
#' list_geosom_layers()
list_geosom_layers <- function() {
  data.frame(
    layer = c("admin0", "admin1", "admin2", "states"),
    description = c(
      "Somalia national boundary",
      "Administrative level 1 boundaries",
      "Administrative level 2 boundaries",
      "Somalia state boundaries"
    ),
    stringsAsFactors = FALSE
  )
}
