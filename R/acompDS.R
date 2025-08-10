#' 
#' @title Creates an Aitchison composition object for compositional data analysis
#' @description Creates an Aitchison composition object using the compositions::acomp() function
#' @details Serverside assign function \code{acompDS} called by clientside function
#' \code{ds.acomp}.
#' Returns an Aitchison composition object for compositional data analysis.
#' This function wraps the compositions::acomp() function for use in DataSHIELD.
#' For further details see help for \code{ds.acomp} function.
#' @param X name of the composition dataset or vector. Should be a character string.
#' @param parts vector containing the indices or names of the columns to be used.
#' @param total the total amount to be used, typically 1 or 100.
#' @param warn.na should the user be warned in case of NA, NaN or 0 coding different types of missing values?
#' @param detectionlimit a number, vector or matrix of positive numbers giving the detection limit.
#' @param BDL the code for 'Below Detection Limit' in X.
#' @param MAR the code for 'Missing At Random' in X.
#' @param MNAR the code for 'Missing Not At Random' in X.
#' @param SZ the code for 'Structural Zero' in X.
#' @return an Aitchison composition object of class "acomp".
#' @author DataSHIELD Development Team
#' @export
#' 
acompDS <- function(
  X = NULL,
  parts = NULL,
  total = 1,
  warn.na = FALSE,
  detectionlimit = NULL,
  BDL = NULL,
  MAR = NULL,
  MNAR = NULL,
  SZ = NULL
) {
  X_param <- eval(parse(text = X), envir = parent.frame())

  # Call compositions::acomp conditionally based on whether parts was provided
  if (is.null(parts)) {
    acomp_object <- compositions::acomp(X = X_param,
                                        total = total,
                                        warn.na = warn.na,
                                        detectionlimit = detectionlimit,
                                        BDL = BDL,
                                        MAR = MAR,
                                        MNAR = MNAR,
                                        SZ = SZ)
  } else {
    acomp_object <- compositions::acomp(X = X_param,
                                        parts = parts,
                                        total = total,
                                        warn.na = warn.na,
                                        detectionlimit = detectionlimit,
                                        BDL = BDL,
                                        MAR = MAR,
                                        MNAR = MNAR,
                                        SZ = SZ)
  }
  return(acomp_object)
}