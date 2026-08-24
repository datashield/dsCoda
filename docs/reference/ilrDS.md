# Computes isometric log-ratio (ILR) coordinates for compositional data

Creates ILR coordinates using the compositions::ilr() function on the
server.

## Usage

``` r
ilrDS(X = NULL, ...)
```

## Arguments

- X:

  name of the composition dataset, matrix, data.frame or acomp object.
  Character string.

- ...:

  additional arguments including flattened V matrix values and V_ncol
  parameter. When V matrix is provided, it should be flattened and
  passed with V_ncol specifying the number of columns.

## Value

a matrix-like object with ILR coordinates.

## Details

Serverside assign function `ilrDS` called by clientside function
`ds.ilr`. Returns ILR coordinates for compositional data analysis. This
function wraps the compositions::ilr() function for use in DataSHIELD.
For further details see help for `ds.ilr` function.

## Author

DataSHIELD Development Team
