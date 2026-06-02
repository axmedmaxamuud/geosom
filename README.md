
<!-- README.md is generated from README.Rmd. Please edit that file -->

<img src="man/figures/logo.png" align="right" height="139" alt="" />

# geosom

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

The goal of geosom package is to facilitate accessing Somalia geographic
boundary and country data by providing ready to use functions to obtain
administrative level boundaries that can be easily integrated with other
libraries for futher analysis and visualization.

## Installation

You can install the development version from Github:

``` r
# install.packages("devtools")
remotes::install_github("axmedmaxamuud/geosom")
```

``` r

library(geosom)
library(ggplot2)

somalia <- get_admin_shape(level = "admin1")


ggplot(somalia) +
  geom_sf(fill = "grey90", color = "white", linewidth = 0.35) +
  coord_sf(expand = FALSE) +
  labs(
    title = "Administrative States of Somalia",
    subtitle = "State-level administrative boundaries",
    caption = "Source: geosom::get_admin_shape()"
  ) +
  geosom_theme()
```

<img src="man/figures/README-unnamed-chunk-2-1.png" alt="" width="100%" />
