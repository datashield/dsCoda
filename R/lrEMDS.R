#' 
#' @title Creates a log-ratio EM algorithm object for compositional data imputation
#' @description Creates a log-ratio EM algorithm object using the zCompositions::lrEM() function
#' @details Serverside assign function \code{lrEMDS} called by clientside function
#' \code{ds.lrEM}.
#' Returns a log-ratio EM algorithm object for imputing left-censored data in compositional data sets.
#' This function wraps the zCompositions::lrEM() function for use in DataSHIELD.
#' For further details see help for \code{ds.lrEM} function.
#' @param X name of the composition dataset or matrix. Should be a character string.
#' @param label unique label (numeric or character) used to denote unobserved values in X.
#' @param dl numeric vector or matrix of detection limits/thresholds.
#' @param rob logical value for robust estimation.
#' @param ini.cov initial estimation method.
#' @param frac fraction parameter for initial multiplicative simple replacement.
#' @param tolerance convergence criterion for the EM algorithm.
#' @param max.iter maximum number of iterations for the EM algorithm.
#' @param rlm.maxit maximum number of iterations for robust regression estimation.
#' @param imp.missing whether unobserved data are treated as missing data.
#' @param suppress.print suppress printed feedback.
#' @param closure closure value used to add a residual part if needed.
#' @param z.warning threshold for the proportion of modified zeros per part.
#' @param z.delete whether rows containing only zeros should be deleted.
#' @return an imputed compositional data set (data.frame class).
#' @author DataSHIELD Development Team
#' @export
#' 
lrEMDS <- function(
  X = NULL,
  label = NULL,
  dl = NULL,
  rob = FALSE,
  ini.cov = "complete.obs",
  frac = 0.65,
  tolerance = 0.0001,
  max.iter = 50,
  rlm.maxit = 150,
  imp.missing = FALSE,
  suppress.print = FALSE,
  closure = NULL,
  z.warning = 0.8,
  z.delete = TRUE
) {
  X_param <- eval(parse(text = X), envir = parent.frame())

  # Call zCompositions::lrEM with all parameters
  lrEM_object <- zCompositions::lrEM(X = X_param,
                                     label = label,
                                     dl = dl,
                                     rob = rob,
                                     ini.cov = ini.cov,
                                     frac = frac,
                                     tolerance = tolerance,
                                     max.iter = max.iter,
                                     rlm.maxit = rlm.maxit,
                                     imp.missing = imp.missing,
                                     suppress.print = suppress.print,
                                     closure = closure,
                                     z.warning = z.warning,
                                     z.delete = z.delete)
  
  return(lrEM_object)
} 