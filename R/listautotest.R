#' List autotest
#'
#' @return data frame of autotest
#' @export
#'
#' @examples
#' listautotest()
listautotest <- function() {
  out <- tibble::tibble(file = fs::dir_ls("gdal/autotest", recurse = TRUE, type = "f"))

  out$url <- sprintf("https://raw.githubusercontent.com/OSGeo/%s", gsub("^gdal", "gdal/master", out$file))
  out
}
