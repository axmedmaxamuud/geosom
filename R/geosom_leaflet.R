#' Create an Interactive Leaflet Map of Somalia Administrative Layers
#'
#' Creates an interactive Leaflet map showing Somalia administrative boundary
#' layers included in the `geosom` package. Users can display the national
#' boundary, state boundaries, administrative level 1 boundaries, and
#' administrative level 2 boundaries.
#'
#' @param layers Character vector of layers to include. Options are `"admin0"`,
#'   `"states"`, `"admin1"`, and `"admin2"`.
#' @param basemap Character. Basemap to display by default. Options are `"osm"`,
#'   `"positron"`, and `"esri"`.
#'
#' @return A `leaflet` map object.
#'
#' @export
#'
#' @examples
#' geosom_leaflet()
#'
#' geosom_leaflet(layers = c("admin1", "admin2"))
geosom_leaflet <- function(
    layers = c("admin0", "states", "admin1", "admin2"),
    basemap = c("positron", "osm", "esri")
) {
  layers <- match.arg(
    layers,
    choices = c("admin0", "states", "admin1", "admin2"),
    several.ok = TRUE
  )

  basemap <- match.arg(basemap)

  m <- leaflet::leaflet(options = leaflet::leafletOptions(preferCanvas = TRUE))

  if (basemap == "osm") {
    m <- m |>
      leaflet::addTiles(group = "OpenStreetMap")
  }

  if (basemap == "positron") {
    m <- m |>
      leaflet::addProviderTiles(
        leaflet::providers$CartoDB.Positron,
        group = "CartoDB Positron"
      )
  }

  if (basemap == "esri") {
    m <- m |>
      leaflet::addProviderTiles(
        leaflet::providers$Esri.WorldImagery,
        group = "Esri World Imagery"
      )
  }

  m <- m |>
    leaflet::setView(lng = 46.1996, lat = 5.1521, zoom = 6)

  overlay_groups <- character()

  if ("admin0" %in% layers) {
    admin0 <- get_admin_shape("admin0")

    m <- m |>
      leaflet::addPolygons(
        data = admin0,
        group = "Admin 0",
        color = "#111111",
        weight = 2,
        fillOpacity = 0,
        popup = ~admin0name,
        label = ~admin0name
      )

    overlay_groups <- c(overlay_groups, "Admin 0")
  }

  if ("states" %in% layers) {
    states <- get_admin_shape("states")

    m <- m |>
      leaflet::addPolygons(
        data = states,
        group = "States",
        color = "#1f78b4",
        weight = 1.2,
        fillOpacity = 0.05,
        popup = ~StateName,
        label = ~StateName
      )

    overlay_groups <- c(overlay_groups, "States")
  }

  if ("admin1" %in% layers) {
    admin1 <- get_admin_shape("admin1")

    m <- m |>
      leaflet::addPolygons(
        data = admin1,
        group = "Admin 1",
        color = "#33a02c",
        weight = 1,
        fillOpacity = 0.05,
        popup = ~admin1name,
        label = ~admin1name
      )

    overlay_groups <- c(overlay_groups, "Admin 1")
  }

  if ("admin2" %in% layers) {
    admin2 <- get_admin_shape("admin2")

    m <- m |>
      leaflet::addPolygons(
        data = admin2,
        group = "Admin 2",
        color = "#666666",
        weight = 0.6,
        fillOpacity = 0.03,
        popup = ~admin2name,
        label = ~admin2name
      )

    overlay_groups <- c(overlay_groups, "Admin 2")
  }

  m |>
    leaflet::addLayersControl(
      baseGroups = c("OpenStreetMap", "CartoDB Positron", "Esri World Imagery"),
      overlayGroups = overlay_groups,
      options = leaflet::layersControlOptions(collapsed = FALSE)
    ) |>
    leaflet::addScaleBar(position = "bottomleft")
}
