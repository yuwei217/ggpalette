# This is where functions for your continous scale go

#'
#'  Generate a sequential continuous colour scale
#' @section explanation: A function that allows a user to pass a name of a colour in your palette and generate a sequential continuous colour scale
#' @param Usage:
#' scale_colour_ggpalette_seq_c (name = "pink", direction = 1, amount = 0.2, ...)
#' @param Arguments:
#' name       defaullt color is pink; let the user select a color from ggpalette color palette
#' direction  default value is 1; allows the user reverse the order of the palette
#' amount     define the amount of lightening
  scale_colour_ggpalette_seq_c <- function(name = "pink", direction = 1, amount = 0.2, ...) {

  stopifnot(name %in% names(ggpalette_colours))

  low <- colorspace::lighten(ggpalette_colours[[name]], amount = amount)

  high <- ggpalette_colours[["orange"]]

  if (direction < 0) {
    col1 <- low
    col2 <- high
    low <- col2
    high <- col1
  }
  # pass everything on to ggplot2 color gradient

  ggplot2::scale_color_gradient(
    low = low,
    high = high,
    aesthetics = "colour",
    ...
  )

}
