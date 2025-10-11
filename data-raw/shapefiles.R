# data-raw/prepare-shapefiles
library(sf)
library(usethis)

# ---- Admin0 ----
admin0 <- st_read("inst/extdata/admin/admin0/admin0.shp", quiet = TRUE)
usethis::use_data(admin0, overwrite = TRUE)

# ---- Admin1 ----
admin1 <- st_read("inst/extdata/admin/admin1/admin1.shp", quiet = TRUE)
usethis::use_data(admin1, overwrite = TRUE)

# ---- Admin2 ----
admin2 <- st_read("inst/extdata/admin/admin2/admin2.shp", quiet = TRUE)
usethis::use_data(admin2, overwrite = TRUE)

# ---- States ----
states <- st_read("inst/extdata/states/states.shp", quiet = TRUE)
usethis::use_data(states, overwrite = TRUE)
