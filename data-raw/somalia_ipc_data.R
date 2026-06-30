# library(readxl)
# library(dplyr)
# library(usethis)
#
# somalia_ipc_data <- read_excel(
#   path = "data-raw/Somalia_IPC_Database.xlsx",
#   sheet = "data"
# ) |>
#   rename(
#     year = Year,
#     assessment = Assessment,
#     admin1_name = Region,
#     admin1_pcode = admin1pcod,
#     population = Population,
#     phase_1 = Phase_1,
#     phase_1_prop = Phase1_prop,
#     phase_2 = Phase_2,
#     phase_2_prop = Phase2_prop,
#     phase_3 = Phase_3,
#     phase_3_prop = Phase3_prop,
#     phase_4 = Phase_4,
#     phase_4_prop = Phase4_prop,
#     phase_5 = Phase_5,
#     phase_5_prop = Phase5_prop,
#     phase_3plus = Phase_3plus,
#     phase_3plus_prop = Phase_3plus_prop
#   ) |>
#   mutate(
#     year = as.integer(year),
#     assessment = as.character(assessment),
#     admin1_name = as.character(admin1_name),
#     admin1_pcode = as.character(admin1_pcode),
#     source = "Somalia IPC Acute Food Insecurity database"
#   )
#
# # Basic data checks
# stopifnot(nrow(somalia_ipc_data) == 470)
#
# stopifnot(
#   all(
#     somalia_ipc_data$phase_3plus ==
#       somalia_ipc_data$phase_3 +
#       somalia_ipc_data$phase_4 +
#       somalia_ipc_data$phase_5
#   )
# )
#
# stopifnot(!any(is.na(somalia_ipc_data$admin1_pcode)))
#
# # Save as package data
# usethis::use_data(somalia_ipc_data, overwrite = TRUE)
#
#
# source("data-raw/somalia_ipc_data.R")


