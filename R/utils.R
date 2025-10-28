#' @importFrom rlang inform
#' @noRd
inform_startup <- function(msg, ...) {
  if (is.null(msg)) {
    return()
  }
  if (isTRUE(getOption("tidyomics.quiet"))) {
    return()
  }

  rlang::inform(msg, ..., class = "packageStartupMessage")
}

#' List all packages loaded by the tidyomics metapackage
#'
#' @param include_self Include tidyomics in the list?
#' @return All packages loaded by the tidyomics metapackage.
#' @examples
#' tidyomics_packages()
#' 
#' @importFrom utils packageDescription
#' @export
tidyomics_packages <- function(include_self = TRUE) {
  
  names <- c("tidySummarizedExperiment", "tidySingleCellExperiment", "tidyseurat", "plyranges", "tidySpatialExperiment")
  
  if (include_self) {
    names <- c(names, "tidyomics")
  }

  names
}

#' @importFrom utils stack
#' @noRd
invert <- function(x) {
  if (length(x) == 0) return()
  stacked <- utils::stack(x)
  tapply(as.character(stacked$ind), stacked$values, list)
}
