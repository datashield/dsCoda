# Creates a log-ratio EM algorithm object for compositional data imputation

Creates a log-ratio EM algorithm object using the zCompositions::lrEM()
function

## Usage

``` r
lrEMDS(
  X = NULL,
  label = NULL,
  dl = NULL,
  rob = FALSE,
  ini.cov = "complete.obs",
  frac = 0.65,
  tolerance = 1e-04,
  max.iter = 50,
  rlm.maxit = 150,
  imp.missing = FALSE,
  suppress.print = FALSE,
  closure = NULL,
  z.warning = 0.8,
  z.delete = TRUE
)
```

## Arguments

- X:

  name of the composition dataset or matrix. Should be a character
  string.

- label:

  unique label (numeric or character) used to denote unobserved values
  in X.

- dl:

  numeric vector or matrix of detection limits/thresholds.

- rob:

  logical value for robust estimation.

- ini.cov:

  initial estimation method.

- frac:

  fraction parameter for initial multiplicative simple replacement.

- tolerance:

  convergence criterion for the EM algorithm.

- max.iter:

  maximum number of iterations for the EM algorithm.

- rlm.maxit:

  maximum number of iterations for robust regression estimation.

- imp.missing:

  whether unobserved data are treated as missing data.

- suppress.print:

  suppress printed feedback.

- closure:

  closure value used to add a residual part if needed.

- z.warning:

  threshold for the proportion of modified zeros per part.

- z.delete:

  whether rows containing only zeros should be deleted.

## Value

an imputed compositional data set (data.frame class).

## Details

Serverside assign function `lrEMDS` called by clientside function
`ds.lrEM`. Returns a log-ratio EM algorithm object for imputing
left-censored data in compositional data sets. This function wraps the
zCompositions::lrEM() function for use in DataSHIELD. For further
details see help for `ds.lrEM` function.

## Author

DataSHIELD Development Team
