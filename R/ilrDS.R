#'
#' @title Computes isometric log-ratio (ILR) coordinates for compositional data
#' @description Creates ILR coordinates using the compositions::ilr() function on the server.
#' @details Serverside assign function \code{ilrDS} called by clientside function
#' \code{ds.ilr}. Returns ILR coordinates for compositional data analysis.
#' This function wraps the compositions::ilr() function for use in DataSHIELD.
#' For further details see help for \code{ds.ilr} function.
#' @param X name of the composition dataset, matrix, data.frame or acomp object. Character string.
#' @param ... additional arguments including flattened V matrix values and V_ncol parameter.
#' When V matrix is provided, it should be flattened and passed with V_ncol specifying the number of columns.
#' @return a matrix-like object with ILR coordinates.
#' @author DataSHIELD Development Team
#' @export
#'
ilrDS <- function(
  X = NULL,
  ...
) {
  X_param <- eval(parse(text = X), envir = parent.frame())
  
  # Get additional arguments (flattened V matrix values and ncol)
  dots <- list(...)
  
  if (length(dots) == 0) {
    # No V matrix provided, use default basis
    ilr_object <- compositions::ilr(x = X_param, V = compositions::ilrBase(X_param))
  } else {
    # Reconstruct V matrix from flattened arguments
    # Last argument should be V_ncol
    V_ncol <- dots[["V_ncol"]]
    
    if (is.null(V_ncol)) {
      stop("V_ncol parameter is required when V matrix is provided", call. = FALSE)
    }
    
    # Remove V_ncol from dots to get only the matrix values
    V_values <- dots[names(dots) != "V_ncol"]
    V_flattened <- unlist(V_values)
    
    # Calculate number of rows
    V_nrow <- length(V_flattened) / V_ncol
    
    if (V_nrow != round(V_nrow)) {
      stop("Invalid matrix dimensions: number of elements not divisible by ncol", call. = FALSE)
    }
    
    # Reconstruct the matrix (R fills by columns by default)
    V <- matrix(V_flattened, nrow = V_nrow, ncol = V_ncol)
    
    ilr_object <- compositions::ilr(x = X_param, V = V)
  }

  return(ilr_object)
} 