# #' Check for generic S3 
# #' 
# #' @importFrom glue glue
# #' @importFrom rlang ns_env_name
# #' @noRd
# is_my_s3_generic = function(function_name , package_name){
#   
#   my_function = eval(parse(text=glue("{package_name}::`{function_name}`"))) 
#   if(!is(my_function, "function")) return(TRUE)
#   else  package_name ==  my_function |> ns_env_name()
#   
# }
# 
# #' Check for robust S3 
# #' 
# #' @noRd
# is_my_s3_generic_robust <- function(function_name , package_name) {
#   tryCatch(
#     {
#       is_my_s3_generic(function_name , package_name)
#     },
#     error=function(cond) {
#       return(TRUE)
#     }
#   )    
# }

#' Conflicts between the tidyomics and other packages
#'
#' This function lists all the conflicts between packages in the tidyomics
#' and other packages that you have loaded.
#'
#' There are four conflicts that are deliberately ignored: \code{intersect},
#' \code{union}, \code{setequal}, and \code{setdiff} from dplyr. These functions
#' make the base equivalents generic, so shouldn't negatively affect any
#' existing code.
#' 
#' @param only Set this to a character vector to restrict to conflicts only
#'   with these packages.
#' @examples
#' tidyomics_conflicts()
#' 
#' @importFrom purrr set_names
#' @importFrom purrr keep
#' @importFrom purrr imap
#' @importFrom purrr set_names
#' @importFrom stringr str_remove
#' @export
tidyomics_conflicts <- function(only = NULL) {
  envs <- grep("^package:", search(), value = TRUE)
  envs <- purrr::set_names(envs)

  if (!is.null(only)) {
    only <- union(only, core)
    envs <- envs[names(envs) %in% paste0("package:", only)]
  }
  
  objs <- invert(lapply(envs, ls_env))

  conflicts <- purrr::keep(objs, ~ length(.x) > 1)

  tidy_names <- paste0("package:", tidyomics_packages())
  conflicts <- purrr::keep(conflicts, ~ any(.x %in% tidy_names))

  conflict_funs <- purrr::imap(conflicts, confirm_conflict)
  conflict_funs <- purrr::compact(conflict_funs)

  structure(conflict_funs, class = "tidyomics_conflicts")
}

#' Generate conflict message
#' 
#' @importFrom cli rule
#' @importFrom cli style_bold
#' @importFrom cli col_blue
#' @importFrom cli col_green
#' @importFrom cli col_red
#' @importFrom cli col_cyan
#' @importFrom cli symbol
#' @importFrom cli format_inline
#' @importFrom purrr map
#' @importFrom purrr map_chr
#' @importFrom purrr map2_chr
#' @noRd
tidyomics_conflict_message <- function(x) {
  header <- cli::rule(
    left = cli::style_bold("Conflicts"),
    right = "tidyomics_conflicts()"
  )

  pkgs <- x |> purrr::map(~ gsub("^package:", "", .))
  others <- pkgs |> purrr::map(`[`, -1)
  other_calls <- purrr::map2_chr(
    others, names(others),
    ~ paste0(cli::col_blue(.x), "::", .y, "()", collapse = ", ")
  )

  winner <- pkgs |> purrr::map_chr(1)
  funs <- format(paste0(cli::col_blue(winner), "::", cli::col_green(paste0(names(x), "()"))))
  bullets <- paste0(
    cli::col_red(cli::symbol$cross), " ", funs, " masks ", other_calls,
    collapse = "\n"
  )

  conflicted <- paste0(
    cli::col_cyan(cli::symbol$info), " ",
    cli::format_inline("Use the {.href [conflicted package](http://conflicted.r-lib.org/)} to force all conflicts to become errors"
  ))

  paste0(
    header, "\n",
    bullets, "\n",
    conflicted
  )
}

#' @importFrom cli cat_line
#' @export
print.tidyomics_conflicts <- function(x, ..., startup = FALSE) {
  cli::cat_line(tidyomics_conflict_message(x))
  invisible(x)
}

#' @importFrom purrr map
#' @importFrom purrr keep
#' @noRd
confirm_conflict <- function(packages, name) {
  # Only look at functions
  objs <- packages |>
    purrr::map(~ get(name, pos = .)) |>
    purrr::keep(is.function)

  if (length(objs) <= 1)
    return()

  # Remove identical functions
  objs <- objs[!duplicated(objs)]
  packages <- packages[!duplicated(packages)]
  if (length(objs) == 1)
    return()

  packages
}

#' @noRd
ls_env <- function(env) {
  x <- ls(pos = env)

  # intersect, setdiff, setequal, union come from generics
  if (env %in% c("package:dplyr", "package:lubridate")) {
    x <- setdiff(x, c("intersect", "setdiff", "setequal", "union"))
  }

  if (env == "package:lubridate") {
    x <- setdiff(x, c(
      "as.difftime", # lubridate makes into an S4 generic
      "date"         # matches base behaviour
    ))
  }

  x
}
