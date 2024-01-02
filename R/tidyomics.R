#' Suppress R CMD check note
#' @noRd
ignore_unused_imports <- function() {
  tidySummarizedExperiment::unnest_summarized_experiment
  tidySingleCellExperiment::unnest_single_cell_experiment
  tidySpatialExperiment::unnest_single_cell_experiment
  tidyseurat::unnest_seurat
  tidybulk::aggregate_duplicates
  plyranges::add_nearest_distance
  nullranges::focal
  tidytof::as_tof_tbl
}

#' @noRd
release_bullets <- function() {
  c(
    '`usethis::use_latest_dependencies(TRUE, "CRAN")`',
    '`tidyomics_dependency_dissuade()`'
  )
}
