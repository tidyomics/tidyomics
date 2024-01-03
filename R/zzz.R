#' @noRd
.onAttach <- function(...) {
  attached <- tidyomics_attach()
  if (!is_loading_for_tests()) {
    inform_startup(tidyomics_attach_message(attached))
  }

  if (!is_attached("conflicted") && !is_loading_for_tests()) {
    conflicts <- tidyomics_conflicts()
    inform_startup(tidyomics_conflict_message(conflicts))
  }
}

#' @noRd
is_attached <- function(x) {
  paste0("package:", x) %in% search()
}

#' @noRd
is_loading_for_tests <- function() {
  !interactive() && identical(Sys.getenv("DEVTOOLS_LOAD"), "tidyomics")
}
