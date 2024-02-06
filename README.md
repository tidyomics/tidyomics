
<!-- README.md is generated from README.Rmd. Please edit that file -->

## Overview

The [tidyomics](https://github.com/tidyomics) ecosystem is a set of
packages for omics data analysis that work together in harmony; they
share common Bioconductor data representations and API design consistent
with the [tidyverse](https://www.tidyverse.org/) ecosystem. The
**tidyomics** package is designed to make it easy to install and load
core packages from the *tidyomics* ecosystem with a single command.

The core packages are:

<https://github.com/tidyomics/tidyomics/blob/690945b0ffa23c2b084a66c174fba5696028af87/R/attach.R#L3-L4>

## Installation

The **tidyomics** package can be installed from GitHub:

``` r
remotes::install_github("tidyomics/tidyomics")
```

The **plyinteractions**, **tidySpatialExperiment** and **tidytof**
packages are not yet available for automatic installation. For the time
being, **plyinteractions** and **tidySpatialExperiment** can be
installed independently:

``` r
BiocManager::install("tidyomics/plyinteractions")
BiocManager::install("william-hutchison/tidySpatialExperiment")
```

And **tidytof** can be installed via
[GitHub](https://github.com/keyes-timothy/tidytof).

## Loading the *tidyomics* ecosystem

The core *tidyomics* packages and supporting *tidyverse* packages can be
loaded with:

``` r
library(tidyomics)
```

This command also produces a summary of package versions and function
conflicts. Function conflicts are a point of ongoing development and
will be addressed over time.

**plyinteractions**, **tidySpatialExperiment** and **tidytof** can be
loaded independently:

``` r
library(plyinteractions)
library(tidySpatialExperiment)
library(tidytof)
```

You are now ready to start using the *tidyomics* ecosystem.
