#' Block ads produced from a function
#'
#' Returns a function that won't show ads.
#'
#' @param f Function that has been monetized
#'
#' @export
freely <- function(f) {
  func_name <- substitute(f)
  ret <- environment(f)$func

  if (is.null(ret)) {
    warning("Function does not appear to have advertising, made no change")
    return(f)
  }
  ret
}


#' Block all ads from a package
#'
#' @param pkg Name of package as a character vector
#'
#' @export
block_all <- function(pkg) {
  env <- as.environment(paste0("package:", pkg))
  wrap_all_functions(freely, env)
}
