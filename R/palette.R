# Define colour palette variables and functions here

ggpalette_colours <- list(
  # add your colours as a named list here, i.e.
  "pink" = "#ea5f94",
  "orange" = "#ffb14e",
  "navy"   = "#2e4057",
  "grey"   = "#8d96a3",
  "magenta" = "#cd34b5",
  "green"  = "#66a182"
)


#' ggpalette_palette
#' @section explanation: A function that takes a single argument n and returns n colors,  and let the user re-order the colors for specific values of n
#' @param Usage:
#' ggpalette(primary = "pink",  other = "orange", direction = 1)
#' @param Arguments:
#' primary    specify a manual color
#' other      specifies the name of the second (or other) color
#' direction  default value is 1; allows the user reverse the order of the palette
#'@param Value:
#' n is the number of colours being picked, and returne message or warn the user if n is larger than the number of colours in the palette.
#' @export
#'
ggpalette_pal <- function(primary = "pink",
                              other = "orange", direction = 1) {
  stopifnot(primary %in% names(ggpalette_colours))

  function(n) {
    if (n > 6) warning("ggpalette Color Palette only has 6 colors.")

    if (n == 2) {
      other <- if (!other %in% names(ggpalette_colours)) {
        other
      } else {
        ggpalette_colours[other]
      }

      color_list <- c(other, ggpalette_colours[primary])
    } else {
      color_list <- ggpalette_colours[1:n]
    }

    color_list <- unname(unlist(color_list))
    if (direction >= 0) color_list else rev(color_list)
  }
}
