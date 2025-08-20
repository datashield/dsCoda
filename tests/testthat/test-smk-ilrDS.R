#-------------------------------------------------------------------------------
# Copyright (c) 2025 ProPASS Consortium. All rights reserved.
#
# This program and the accompanying materials
# are made available under the terms of the GNU Public License v3.0.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#-------------------------------------------------------------------------------

#
# Set up
#

context("ilrDS::smk::setup")

set.standard.disclosure.settings()

#
# Tests
#

context("ilrDS::smk::X not NULL V is NULL")
test_that("X not NULL and V is NULL", {
    X <- "D"
    D <- data.frame(A = c(1.0, 2.0, 4.0, 5.0), B = c(5.0, 1.0, 2.0, 4.0), C = c(2.0, 4.0, 5.0, 1.0))

    res <- ilrDS(X = X, V = NULL)

    expect_length(res, 8)
    expect_equal(class(res), "rmult")
    expect_equal(res[[1]],  1.1380445, tolerance = 1e-06)
    expect_equal(res[[2]], -0.4901291, tolerance = 1e-06)
    expect_equal(res[[3]], -0.4901291, tolerance = 1e-06)
    expect_equal(res[[4]], -0.1577863, tolerance = 1e-06)
    expect_equal(res[[5]], -0.09109797, tolerance = 1e-06)
    expect_equal(res[[6]],  0.84892845, tolerance = 1e-06)
    expect_equal(res[[7]],  0.46517210, tolerance = 1e-06)
    expect_equal(res[[8]], -1.22300258, tolerance = 1e-06)
})

context("ilrDS::smk::X not NULL V is NULL")
test_that("X not NULL and V is NULL", {
    X <- "D"
    D <- data.frame(A = c(1.0, 2.0, 4.0, 5.0), B = c(5.0, 1.0, 2.0, 4.0), C = c(2.0, 4.0, 5.0, 1.0))
    V <- compositions:::ilrBase(D)

    expect_length(V, 6)
    expect_true(all(class(V) %in% c('matrix', 'array')))
    expect_equal(V[[1]], -0.7071068, tolerance = 1e-06)
    expect_equal(V[[2]],  0.7071068, tolerance = 1e-06)
    expect_equal(V[[3]],  0.0000000, tolerance = 1e-06)
    expect_equal(V[[4]], -0.4082483, tolerance = 1e-06)
    expect_equal(V[[5]], -0.4082483, tolerance = 1e-06)
    expect_equal(V[[6]],  0.8164966, tolerance = 1e-06)  

    res <- ilrDS(X = X, V = V)

    expect_length(res, 8)
    expect_equal(class(res), "rmult")
    expect_equal(res[[1]],  1.1380445, tolerance = 1e-06)
    expect_equal(res[[2]], -0.4901291, tolerance = 1e-06)
    expect_equal(res[[3]], -0.4901291, tolerance = 1e-06)
    expect_equal(res[[4]], -0.1577863, tolerance = 1e-06)
    expect_equal(res[[5]], -0.09109797, tolerance = 1e-06)
    expect_equal(res[[6]],  0.84892845, tolerance = 1e-06)
    expect_equal(res[[7]],  0.46517210, tolerance = 1e-06)
    expect_equal(res[[8]], -1.22300258, tolerance = 1e-06)
})

#
# Done
#

context("ilrDS::smk::shutdown")

context("ilrDS::smk::done")
