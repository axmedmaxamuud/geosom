# data-raw/prepare-shapefiles
library(sf)
library(tidyverse)
library(usethis)

# ---- Admin0 ----
admin0 <- st_read("inst/extdata/admin/admin0/admin0.shp", quiet = TRUE) %>%
  select(admin0name, admin0pcod, area_km2, geometry)

usethis::use_data(admin0, overwrite = TRUE)

# ---- Admin1 ----
admin1 <- st_read("inst/extdata/admin/admin1/admin1.shp", quiet = TRUE) %>%
  select(
    admin1name, admin1pcod, admin0name, area_km2, geometry)

usethis::use_data(admin1, overwrite = TRUE)

# ---- Admin2 ----
admin2 <- st_read("inst/extdata/admin/admin2/admin2.shp", quiet = TRUE) %>%
  select(
    admin2name, admin2pcod, admin1name, admin1pcod, area_km2, geometry)

usethis::use_data(admin2, overwrite = TRUE)

# ---- States ----
states <- st_read("inst/extdata/states/states.shp", quiet = TRUE) %>%
  select(StateName, name, area_km2, geometry)

usethis::use_data(states, overwrite = TRUE)
