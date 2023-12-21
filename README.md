
<!-- README.md is generated from README.Rmd. Please edit that file -->

## Overview

The tidyomics is a set of packages that work in harmony because they
share common data representations and API design, consistent with
`tidyverse`. The **tidyomics** package is designed to make it easy to
install and load core packages from the tidyomics in a single command.

If you’d like to learn how to use the tidyomics effectively, the best
place to start is [Bioconducotor workshop
2023](https://tidyomics.github.io/tidyomicsWorkshopBioc2023/).

## Installation

<div class=".pkgdown-devel">

``` r
# Install from GitHub
remotes::install_github("tidyomics/tidyomics")
```

</div>

<div class=".pkgdown-release">

Not yet finalised

``` r
BiocManager::install("tidyomics")
```

</div>

`library(tidyomics)` will load the core tidyomics packages:

- [ggplot2](https://ggplot2.tidyomics.org), for data visualisation.
- [dplyr](https://dplyr.tidyomics.org), for data manipulation.
- [tidyr](https://tidyr.tidyomics.org), for data tidying.
- [tidySummarizedExperiment](https://tidySummarizedExperiment.tidyomics.org),
  for data import.
- [tidySingleCellExperiment](https://tidySingleCellExperiment.tidyomics.org),
  for functional programming.
- [tidySpatialExperiment](https://tidySingleCellExperiment.tidyomics.org),
  for functional programming.
- [tidyseurat](https://tidyseurat.tidyomics.org), for tibbles, a modern
  re-imagining of data frames.
- [plyranges](https://github.com/tidyomics/plyranges), for strings.
- [nullranges](https://github.com/tidyomics/nullranges), for factors.
- [tidybulk](https://github.com/tidyomics/tidybulk), for date/times.

You also get a condensed summary of conflicts (that will decrease as the
development progresses) with other packages you have loaded:

``` r
library(tidyomics)
#> Warning: package 'S4Vectors' was built under R version 4.3.2
#> Warning: package 'GenomeInfoDb' was built under R version 4.3.2
#> ── Attaching core tidyomics packages ──────────────────────── tidyomics 0.1.1 ──
#> ✔ dplyr                    1.1.4      ✔ tidyr                    1.3.0 
#> ✔ ggplot2                  3.4.4      ✔ tidyseurat               0.7.9 
#> ✔ nullranges               1.6.2      ✔ tidySingleCellExperiment 1.13.2
#> ✔ plyranges                1.20.0     ✔ tidySummarizedExperiment 1.11.8
#> ✔ tidybulk                 1.15.4     
#> ── Conflicts ────────────────────────────────────────── tidyomics_conflicts() ──
#> ✖ plyranges::between()    masks dplyr::between()
#> ✖ tidybulk::bind_cols()   masks ttservice::bind_cols(), dplyr::bind_cols()
#> ✖ tidybulk::filter()      masks plyranges::filter(), dplyr::filter(), stats::filter()
#> ✖ plyranges::n()          masks dplyr::n()
#> ✖ plyranges::n_distinct() masks dplyr::n_distinct()
#> ✖ tidybulk::rename()      masks S4Vectors::rename(), dplyr::rename()
#> ✖ plyranges::slice()      masks IRanges::slice(), dplyr::slice()
#> ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors
```

And you can check that all tidyomics packages are up-to-date with
`tidyomics_update()`:

``` r
tidyomics_update()
#> All tidyomics packages up-to-date
```

## Packages

As well as the core tidyomics, installing this package also installs a
selection of other packages that you’re likely to use frequently, but
probably not in every analysis. This includes packages for:

- Working with genomic features:

  - [plyranges](https://github.com/tidyomics/plyranges), for strings.
  - [nullranges](https://github.com/tidyomics/nullranges), for factors.

- Working with transcriptomic features:

  - [tidySummarizedExperiment](https://tidySummarizedExperiment.tidyomics.org),
    for data import.
  - [tidySingleCellExperiment](https://tidySingleCellExperiment.tidyomics.org),
    for functional programming.
  - [tidySpatialExperiment](https://tidySingleCellExperiment.tidyomics.org),
    for functional programming.
  - [tidybulk](https://github.com/tidyomics/tidybulk), for date/times.

- Working with cytometry features:

  - Coming soon…
