#' Suppress R CMD check note
#' @noRd
ignore_unused_imports <- function() {
  tidySummarizedExperiment::unnest_summarized_experiment
  tidySingleCellExperiment::unnest_single_cell_experiment
  tidyseurat::unnest_seurat
  tidybulk::aggregate_duplicates
  plyranges::add_nearest_distance
  nullranges::focal
}

#' @noRd
release_bullets <- function() {
  c(
    '`usethis::use_latest_dependencies(TRUE, "CRAN")`',
    '`tidyomics_dependency_dissuade()`'
  )
}

#' tidyomics
#' 
#' @description A helper package to install and attach the core packages of the tidyomics ecosystem.
#' @importFrom BiocManager install
#' @export 
#' @return No value is returned
#' @examples
#' \dontrun{
#' # Install the core packages of the tidyomics ecosystem
#' BiocManager::install("tidyomics")
#' 
#' # Attach the core packages of the tidyomics ecosystem
#' library(tidyomics)
#' }
tidyomics <-
  function() {
    return(NULL)
  }
