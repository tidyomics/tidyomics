
<!-- README.md is generated from README.Rmd. Please edit that file -->

## Overview

The [*tidyomics*](https://github.com/tidyomics) ecosystem is a set of
packages for omics data analysis that work together in harmony; they
share common Bioconductor data representations and API design consistent
with the [tidyverse](https://www.tidyverse.org/) ecosystem. The
**tidyomics** package is designed to make it easy to install and load
core packages from the *tidyomics* ecosystem with a single command.

The core packages are:

``` r
tidyomics_packages()
```

    #   [1] "tidySummarizedExperiment" "tidySingleCellExperiment"
    #   [3] "tidyseurat"               "tidybulk"                
    #   [5] "plyranges"                "nullranges"              
    #   [7] "purrr"                    "rlang"                   
    #   [9] "stringr"                  "cli"                     
    #  [11] "utils"                    "tidyomics"

## The tidyomics ecosystem

You can find out more about each package in the *tidyomics* ecosystem
here:

| Package                                                                             | Intro                                                                                         | GitHub                                                               | Description                                       |
|-------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------|----------------------------------------------------------------------|---------------------------------------------------|
| [tidybulk](https://stemangiola.github.io/tidybulk/)                                 | [Vignette](https://stemangiola.github.io/tidybulk/articles/introduction.html)                 | [GitHub](https://github.com/stemangiola/tidybulk/)                   | Tidy bulk RNA-seq data analysis                   |
| [tidySummarizedExperiment](https://stemangiola.github.io/tidySummarizedExperiment/) | [Vignette](https://stemangiola.github.io/tidySummarizedExperiment/articles/introduction.html) | [GitHub](https://github.com/stemangiola/tidySummarizedExperiment)    | Tidy manipulation of SummarizedExperiment objects |
| [tidySingleCellExperiment](https://stemangiola.github.io/tidySingleCellExperiment)  | [Vignette](https://stemangiola.github.io/tidySingleCellExperiment/articles/introduction.html) | [GitHub](https://github.com/stemangiola/tidySingleCellExperiment)    | Tidy manipulation of SingleCellExperiment objects |
| [tidySeurat](https://stemangiola.github.io/tidyseurat/)                             | [Vignette](https://stemangiola.github.io/tidyseurat/articles/introduction.html)               | [GitHub](https://github.com/stemangiola/tidyseurat)                  | Tidy manipulation of Seurat objects               |
| [tidySpatialExperiment](https://william-hutchison.github.io/tidySpatialExperiment/) | [Vignette](https://william-hutchison.github.io/tidySpatialExperiment/articles/overview.html)  | [GitHub](https://github.com/william-hutchison/tidySpatialExperiment) | Tidy manipulation of SpatialExperiment objects    |
| [plyranges](https://sa-lee.github.io/plyranges/)                                    | [Vignette](https://sa-lee.github.io/plyranges/articles/an-introduction.html)                  | [GitHub](https://github.com/sa-lee/plyranges)                        | Tidy manipulation of genomics ranges              |
| [plyinteractions](https://tidyomics.github.io/plyinteractions/)                     | [Vignette](https://tidyomics.github.io/plyinteractions/articles/plyinteractions.html)         | [GitHub](https://github.com/tidyomics/plyinteractions)               | Tidy manipulation of genomic interactions         |
| [nullranges](https://nullranges.github.io/nullranges/)                              | [Vignette](https://nullranges.github.io/nullranges/articles/nullranges.html)                  | [GitHub](https://github.com/nullranges/nullranges/)                  | Generation of null genomic range sets             |

## Installation

Installing the **tidyomics** package will install all core packages of
the *tidyomics* ecosystem. The **tidyomics** package can be installed
from Bioconductor:

``` r
BiocManager::install("tidyomics")
```

**plyinteractions** and **tidySpatialExperiment** are two new packages
in the *tidyomics* ecosystem. **plyinteractions** and
**tidySpatialExperiment** are both ready to use and are available in
Bioconductor. The packages are now reaching maturity and will be added
to the core packages for automatic installation mid-2024.

For the time being, **plyinteractions** and **tidySpatialExperiment**
can be installed independently:

``` r
BiocManager::install("plyinteractions")
BiocManager::install("tidySpatialExperiment")
```

## Loading the *tidyomics* ecosystem

The core *tidyomics* packages can be attached with:

``` r
library(tidyomics)
```

This command also produces a summary of package versions and function
conflicts. Function conflicts are a point of ongoing development and
will be addressed over time.

**plyinteractions** and **tidySpatialExperiment** can be loaded
independently:

``` r
library(plyinteractions)
library(tidySpatialExperiment)
```

You are now ready to start using the *tidyomics* ecosystem.
