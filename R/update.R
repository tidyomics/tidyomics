#' @importFrom rlang is_installed
#' @importFrom utils packageVersion
#' @noRd
packageVersion <- function(pkg) {
  if (rlang::is_installed(pkg)) {
    utils::packageVersion(pkg)
  } else {
    0
  }
}
