
<!-- README.md is generated from README.Rmd. Please edit that file -->

## Overview

The *tidyomics* ecosystem is a set of packages for ’omic data analysis
that work together in harmony; they share common data representations
and API design, consistent with the
[*tidyverse*](https://www.tidyverse.org/) ecosystem. The **tidyomics**
package is designed to make it easy to install and load core packages
from the *tidyomics* ecosystem with a single command.

If you’d like to learn how to use *tidyomics* effectively, the best
place to start is [Bioconducotor workshop
2023](https://tidyomics.github.io/tidyomicsWorkshopBioc2023/).

## Installation

The **tidyomics** package can be installed from Github:

``` r
remotes::install_github("tidyomics/tidyomics")
```

Installation via Bioconductor is coming soon:

``` r
BiocManager::install("tidyomics")
```

## Loading the *tidyomics* ecosystem

The core *tidyomics* packages and supporting *tidyverse* packages can be
loaded with:

``` r
library(tidyomics)
#> Warning: package 'S4Vectors' was built under R version 4.3.2
#> Warning: package 'GenomeInfoDb' was built under R version 4.3.2
#> Warning: replacing previous import 'tidySingleCellExperiment::plot_ly' by
#> 'ttservice::plot_ly' when loading 'tidySpatialExperiment'
#> Warning: package 'tidybulk' was built under R version 4.3.2
#> ── Attaching core tidyomics packages ──────────────────────── tidyomics 0.1.1 ──
#> ✔ dplyr                    1.1.4      ✔ tidyr                    1.3.0 
#> ✔ ggplot2                  3.4.4      ✔ tidyseurat               0.7.9 
#> ✔ nullranges               1.8.0      ✔ tidySingleCellExperiment 1.12.0
#> ✔ plyranges                1.22.0     ✔ tidySpatialExperiment    0.99.8
#> ✔ tidybulk                 1.14.3     ✔ tidySummarizedExperiment 1.11.8
#> ── Conflicts ────────────────────────────────────────── tidyomics_conflicts() ──
#> ✖ tidyseurat::aggregate_cells()                          masks tidySpatialExperiment::aggregate_cells(), tidySingleCellExperiment::aggregate_cells(), ttservice::aggregate_cells()
#> ✖ plyranges::between()                                   masks dplyr::between()
#> ✖ tidybulk::bind_cols()                                  masks ttservice::bind_cols(), dplyr::bind_cols()
#> ✖ tidybulk::filter()                                     masks plyranges::filter(), dplyr::filter(), stats::filter()
#> ✖ plyranges::n()                                         masks dplyr::n()
#> ✖ plyranges::n_distinct()                                masks dplyr::n_distinct()
#> ✖ tidybulk::rename()                                     masks S4Vectors::rename(), dplyr::rename()
#> ✖ plyranges::slice()                                     masks IRanges::slice(), dplyr::slice()
#> ✖ tidySpatialExperiment::unnest_single_cell_experiment() masks tidySingleCellExperiment::unnest_single_cell_experiment()
#> ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors
```

This command also produces a summary of package versions and function
conflicts. Function conflicts are a point of ongoing development and
will be addressed over time.

You can also check that all *tidyomics* packages are up-to-date:

``` r
tidyomics_update()
```

## Included packages

The *tidyomics* ecosystem includes packages for:

- Working with genomic features:

  - [plyranges](https://github.com/sa-lee/plyranges), for tidy
    manipulation of genomic range data.
  - [nullranges](https://github.com/nullranges/nullranges), for tidy
    generation of genomic ranges representing the null hypothesis.

- Working with transcriptomic features:

  - [tidySummarizedExperiment](https://github.com/stemangiola/tidySummarizedExperiment),
    for tidy manipulation of SummarizedExperiment objects.
  - [tidySingleCellExperiment](https://github.com/stemangiola/tidySingleCellExperiment),
    for tidy manipulation of SingleCellExperiment objects.
  - [tidySpatialExperiment](https://github.com/william-hutchison/tidySpatialExperiment),
    for tidy manipulation of SpatialExperiment objects.
  - [tidyseurat](https://github.com/stemangiola/tidyseurat), for tidy
    manipulation of Seurat objects.
  - [tidybulk](https://github.com/stemangiola/tidybulk), for tidy bulk
    RNA-seq data analysis.

- Working with cytometry features:

  - Coming soon…
