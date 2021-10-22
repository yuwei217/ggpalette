
<!-- README.md is generated from README.Rmd. Please edit that file -->

# packageName

<!-- badges: start -->
<!-- badges: end -->

The goal of packageName is to defnes a custom colour palette and enable
the palettes to be used as both a discrete and continuous scale in
ggplot2.

## Installation

You can install the development version of ggpalette from
[GitHub](https://github.com/) with:

``` r
remotes::install_github("yuwei217/ggpalette")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(ggpalette)
library(palmerpenguins)
library(ggplot2)
p1 <- ggplot(penguins, aes(bill_length_mm, bill_depth_mm, color = sex)) +
  geom_point(size = 2) +
  scale_colour_ggpalette_d() +
  theme_bw()
p1
```

\`\`\`
