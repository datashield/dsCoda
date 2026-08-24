# Creates an Aitchison composition object for compositional data analysis

Creates an Aitchison composition object using the compositions::acomp()
function

## Usage

``` r
acompDS(
  X = NULL,
  parts = NULL,
  total = 1,
  warn.na = FALSE,
  detectionlimit = NULL,
  BDL = NULL,
  MAR = NULL,
  MNAR = NULL,
  SZ = NULL
)
```

## Arguments

- X:

  name of the composition dataset or vector. Should be a character
  string.

- parts:

  vector containing the indices or names of the columns to be used.

- total:

  the total amount to be used, typically 1 or 100.

- warn.na:

  should the user be warned in case of NA, NaN or 0 coding different
  types of missing values?

- detectionlimit:

  a number, vector or matrix of positive numbers giving the detection
  limit.

- BDL:

  the code for 'Below Detection Limit' in X.

- MAR:

  the code for 'Missing At Random' in X.

- MNAR:

  the code for 'Missing Not At Random' in X.

- SZ:

  the code for 'Structural Zero' in X.

## Value

an Aitchison composition object of class "acomp".

## Details

Serverside assign function `acompDS` called by clientside function
`ds.acomp`. Returns an Aitchison composition object for compositional
data analysis. This function wraps the compositions::acomp() function
for use in DataSHIELD. For further details see help for `ds.acomp`
function.

## Author

DataSHIELD Development Team
