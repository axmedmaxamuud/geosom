#' Somalia IPC Acute Food Insecurity Database
#'
#' A regional-level Somalia IPC Acute Food Insecurity dataset containing
#' population estimates by IPC phase, year, assessment period, and administrative
#' level 1 region.
#'
#' The dataset includes total population, IPC Phase 1 to Phase 5 population
#' estimates, phase proportions, and combined IPC Phase 3 or above estimates.
#' It also includes the administrative level 1 P-code, which can be used to join
#' the data with the `admin1` boundary layer.
#'
#' @format A data frame with 470 rows and 18 variables:
#' \describe{
#'   \item{year}{Assessment year.}
#'   \item{assessment}{Assessment period.}
#'   \item{admin1_name}{Administrative level 1 region name.}
#'   \item{admin1_pcode}{Administrative level 1 region P-code.}
#'   \item{population}{Total population used for IPC analysis.}
#'   \item{phase_1}{Population in IPC Phase 1.}
#'   \item{phase_1_prop}{Proportion of population in IPC Phase 1.}
#'   \item{phase_2}{Population in IPC Phase 2.}
#'   \item{phase_2_prop}{Proportion of population in IPC Phase 2.}
#'   \item{phase_3}{Population in IPC Phase 3.}
#'   \item{phase_3_prop}{Proportion of population in IPC Phase 3.}
#'   \item{phase_4}{Population in IPC Phase 4.}
#'   \item{phase_4_prop}{Proportion of population in IPC Phase 4.}
#'   \item{phase_5}{Population in IPC Phase 5.}
#'   \item{phase_5_prop}{Proportion of population in IPC Phase 5.}
#'   \item{phase_3plus}{Population in IPC Phase 3 or above.}
#'   \item{phase_3plus_prop}{Proportion of population in IPC Phase 3 or above.}
#'   \item{source}{Source description.}
#' }
#'
#' @source Somalia IPC Acute Food Insecurity database.
#'
#' @name somalia_ipc_data
#' @docType data
#' @keywords datasets
NULL
