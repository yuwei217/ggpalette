# This is where your discrete ggplot palettes would go


#' Discrete ggplot palettes
#' @section explanation:A function that uses ggplot2::discrete_scale to allow ggplot2 to use the colour palette
#' @param Usage:
#' scale_colour_ggpalette_d (primary = "pink",  other = "orange", direction = 1)
#' @param Arguments:
#' primary    specify a manual color
#' other      specifies the name of the second (or other) color
#' direction  default value is 1; allows the user reverse the order of the palette
#' @export

scale_colour_ggpalette_d <- function(primary = "pink", other = "orange",direction = 1, ...) {

  ggplot2::discrete_scale(
    "colour", "ggpalette",
    ggpalette_pal(primary, other, direction),
    ...
  )
}


#' For fill aesthetics in ggplot2
#'
#' @section explanation:
#' A function that allows your palette to be used for fill aesthetics in ggplot2
#' @param Usage:
#' scale_fill_ggpalette_d (primary = "pink",  other = "orange", direction = 1)
#' @param Arguments:
#' primary    specify a manual color
#' other      specifies the name of the second (or other) color
#' direction  default value is 1; allows the user reverse the order of the palette
#' @export
scale_fill_ggpalette_d <- function(primary =  "pink", other = "orange", direction = 1,...) {

  ggplot2::discrete_scale(
    aesthetics = "fill",
    "ggpalette",
    ggpalette_pal(primary, other, direction),
    ...
  )
}
