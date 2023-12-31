
<!-- README.md is generated from README.Rmd. Please edit that file -->

## Overview

The *tidyomics* ecosystem is a set of packages for ’omic data analyses
that work together in harmony; they share common data representations
and API design, consistent with the
[*tidyverse*](https://www.tidyverse.org/) ecosystem. The **tidyomics**
package is designed to make it easy to install and load core packages
from the *tidyomics* ecosystem with a single command.

If you would like to learn how to use *tidyomics*, try looking over our
[blog](https://tidyomics.github.io/tidyomicsBlog/) or the [Bioconducotor
Workshop 2023](https://tidyomics.github.io/tidyomicsWorkshopBioc2023/).

## Included packages

The *tidyomics* ecosystem includes packages for:

- Working with genomic features:

  - [plyranges](https://github.com/sa-lee/plyranges), for tidy
    manipulation of genomic range data.
  - [nullranges](https://github.com/nullranges/nullranges), for tidy
    generation of genomic ranges representing the null hypothesis.
  - [plyinteractions](https://github.com/tidyomics/plyinteractions), for
    tidy manipulation of genomic interaction data.

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

  - [tidytof](https://github.com/keyes-timothy/tidytof), for tidy
    manipulation of high-dimensional cytometry data.

## Installation

The **tidyomics** package can be installed from Github:

``` r
remotes::install_github("tidyomics/tidyomics")
```

This will automatically install most packages in the *tidyomics*
ecosystem. The **plyinteractions**, **tidytof** and
**tidySpatialExperiment** packages are not yet available for automatic
installation. For the time being, they can be installed independently:

``` r
BiocManager::install("tidyomics/plyinteractions")
devtools::install_github("keyes-timothy/tidytof")
devtools::install_github("william-hutchison/tidySpatialExperiment")
```

## Loading the *tidyomics* ecosystem

The core *tidyomics* packages and supporting *tidyverse* packages can be
loaded with:

``` r
library(tidyomics)
#  Warning: package 'S4Vectors' was built under R version 4.3.2
#  Warning: package 'GenomeInfoDb' was built under R version 4.3.2
#  ── Attaching core tidyomics packages ──────────────────────── tidyomics 0.1.6 ──
#  ✔ dplyr                    1.1.4      ✔ tidySummarizedExperiment 1.12.0
#  ✔ ggplot2                  3.4.4      ✔ tidybulk                 1.15.4
#  ✔ nullranges               1.8.0      ✔ tidyr                    1.3.0 
#  ✔ plyranges                1.22.0     ✔ tidyseurat               0.7.9 
#  ✔ tidySingleCellExperiment 1.13.3     
#  ── Conflicts ────────────────────────────────────────── tidyomics_conflicts() ──
#  ✖ plyranges::between()     masks dplyr::between()
#  ✖ tidybulk::bind_cols()    masks ttservice::bind_cols(), dplyr::bind_cols()
#  ✖ plyranges::filter()      masks tidybulk::filter(), dplyr::filter(), stats::filter()
#  ✖ S4Vectors::findMatches() masks utils::findMatches()
#  ✖ S4Vectors::head()        masks utils::head()
#  ✖ plyranges::n()           masks dplyr::n()
#  ✖ plyranges::n_distinct()  masks dplyr::n_distinct()
#  ✖ IRanges::relist()        masks BiocGenerics::relist(), utils::relist()
#  ✖ tidybulk::rename()       masks S4Vectors::rename(), dplyr::rename()
#  ✖ plyranges::slice()       masks IRanges::slice(), dplyr::slice()
#  ✖ IRanges::stack()         masks S4Vectors::stack(), utils::stack()
#  ✖ S4Vectors::tail()        masks utils::tail()
#  ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors
```

This command also produces a summary of package versions and function
conflicts. Function conflicts are a point of ongoing development and
will be addressed over time.

**plyinteractions**, **tidytof** and **tidySpatialExperiment** can be
loaded independently:

``` r
library(plyinteractions)
library(tidytof)
library(tidySpatialExperiment)
```

You are now ready to start using the *tidyomics* ecosystem.
