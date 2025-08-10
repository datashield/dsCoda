#'
#' @title Computes isometric log-ratio (ILR) coordinates for compositional data
#' @description Creates ILR coordinates using the compositions::ilr() function on the server.
#' @details Serverside assign function \code{ilrDS} called by clientside function
#' \code{ds.ilr}. Returns ILR coordinates for compositional data analysis.
#' This function wraps the compositions::ilr() function for use in DataSHIELD.
#' For further details see help for \code{ds.ilr} function.
#' @param X name of the composition dataset, matrix, data.frame or acomp object. Character string.
#' @param V an orthonormal basis matrix to be used for the ILR transform. If NULL, the default
#' basis used by compositions::ilr will be applied.
#' @return a matrix-like object with ILR coordinates.
#' @author DataSHIELD Development Team
#' @export
#'
ilrDS <- function(
  X = NULL,
  V = NULL
) {
  X_param <- eval(parse(text = X), envir = parent.frame())

  if (is.null(V)) {
    ilr_object <- compositions::ilr(x = X_param, V = compositions::ilrBase(X_param))
  } else {
    ilr_object <- compositions::ilr(x = X_param, V = V)
  }

  return(ilr_object)
} 