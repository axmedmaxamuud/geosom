#' Load Somalia IPC Acute Food Insecurity Data
#'
#' Returns Somalia IPC Acute Food Insecurity population data by year,
#' assessment period, and administrative level 1 region.
#'
#' @param year Optional numeric value. Filter data by year.
#' @param assessment Optional character value. Filter data by assessment period,
#'   for example `"Jan_Mar"`.
#' @param region Optional character value. Filter data by region name.
#'
#' @return A data frame containing Somalia IPC population estimates by region,
#'   year, assessment period, and IPC phase.
#'
#' @export
#'
#' @examples
#' head(somalia_ipc(), 10)
#'
#' somalia_ipc(year = 2024)
#'
#' somalia_ipc(region = "Banadir")
#'
#' somalia_ipc(year = 2025, region = "Banadir")
somalia_ipc <- function(year = NULL, assessment = NULL, region = NULL) {
  ipc <- somalia_ipc_data

  if (!is.null(year)) {
    ipc <- ipc[ipc$year %in% year, ]
  }

  if (!is.null(assessment)) {
    ipc <- ipc[ipc$assessment %in% assessment, ]
  }

  if (!is.null(region)) {
    ipc <- ipc[ipc$admin1_name %in% region, ]
  }

  ipc
}

