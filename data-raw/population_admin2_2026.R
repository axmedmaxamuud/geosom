# library(readr)
# library(dplyr)
# library(usethis)
#
# population_admin2_2026 <- read_csv("data-raw/somalia_district_population_2026.csv")  %>%
#   rename(
#     admin1_name = Region,
#     admin2_name = District,
#     admin2_pcode = P_Code,
#     male_under_5 = `<5 Male`,
#     female_under_5 = `<5 Female`,
#     total_under_5 = `<5 Total`,
#     male_5_17 = `5-17 Male`,
#     female_5_17 = `5-17 Female`,
#     total_5_17 = `50-17 Total`,
#     male_18_59 = `18-59 Male`,
#     female_18_59 = `18-59 Female`,
#     total_18_59 = `18-59 Total`,
#     male_60_plus = `60+ Male`,
#     female_60_plus = `60+ Female`,
#     total_60_plus = `60+ Total`,
#     male_total = `Male Total`,
#     female_total = `Female Total`,
#     population_total = Total
#   ) |>
#   mutate(
#     admin0_name = "Somalia",
#     year = 2026,
#     source = "Somalia District-level population estimates for humanitarian response planning, 2026"
#   ) |>
#   select(
#     admin0_name,
#     admin1_name,
#     admin2_name,
#     admin2_pcode,
#     year,
#     male_under_5,
#     female_under_5,
#     total_under_5,
#     male_5_17,
#     female_5_17,
#     total_5_17,
#     male_18_59,
#     female_18_59,
#     total_18_59,
#     male_60_plus,
#     female_60_plus,
#     total_60_plus,
#     male_total,
#     female_total,
#     population_total,
#     source
#   )
#
# # Basic checks
# stopifnot(nrow(population_admin2_2026) == 90)
# stopifnot(!anyDuplicated(population_admin2_2026$admin2_pcode))
# stopifnot(all(population_admin2_2026$male_total + population_admin2_2026$female_total == population_admin2_2026$population_total))
# stopifnot(all(population_admin2_2026$total_under_5 + population_admin2_2026$total_5_17 +
#                 population_admin2_2026$total_18_59 + population_admin2_2026$total_60_plus ==
#                 population_admin2_2026$population_total))
#
# # usethis::use_data(population_admin2_2026, overwrite = TRUE)
