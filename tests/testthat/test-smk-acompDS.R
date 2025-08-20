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

context("acompDS::smk::setup")

set.standard.disclosure.settings()

#
# Tests
#

context("acompDS::smk::simple example, parts is NULL")
test_that("simple example, parts is NULL", {
    X         <- "X_var"
    X_var     <- data.frame(A = c(1.0, 2.0, 4.0, 5.0), B = c(5.0, 1.0, 2.0, 4.0), C = c(2.0, 4.0, 5.0, 1.0))

    res <- acompDS(X = X, parts = NULL)

    expect_length(res, 12)
    expect_equal(class(res), "acomp")
    expect_true(all(colnames(res) %in% c('A', 'B', 'C')))
    expect_equal(res[[1]], 0.1250000, tolerance = 1e-06)
    expect_equal(res[[2]], 0.2857143, tolerance = 1e-06)
    expect_equal(res[[3]], 0.3636364, tolerance = 1e-06)
    expect_equal(res[[4]], 0.5000000, tolerance = 1e-06)
    expect_equal(res[[5]], 0.6250000, tolerance = 1e-06)
    expect_equal(res[[6]], 0.1428571, tolerance = 1e-06)
    expect_equal(res[[7]], 0.1818182, tolerance = 1e-06)
    expect_equal(res[[8]], 0.4000000, tolerance = 1e-06)
    expect_equal(res[[9]], 0.2500000, tolerance = 1e-06)
    expect_equal(res[[10]], 0.5714286, tolerance = 1e-06)
    expect_equal(res[[11]], 0.4545455, tolerance = 1e-06)
    expect_equal(res[[12]], 0.1000000, tolerance = 1e-06)
})

context("acompDS::smk::simple example, parts A and C")
test_that("simple example, parts A and C", {
    X     <- "X_var"
    X_var <- data.frame(A = c(1.0, 2.0, 4.0, 5.0), B = c(5.0, 1.0, 2.0, 4.0), C = c(2.0, 4.0, 5.0, 1.0))
    parts <- c("A", "C")

    res <- acompDS(X = X, parts = parts)

    expect_length(res, 8)
    expect_true(all(colnames(res) %in% c('A', 'C')))
    expect_equal(res[[1]], 0.3333333, tolerance = 1e-06)
    expect_equal(res[[2]], 0.3333333, tolerance = 1e-06)
    expect_equal(res[[3]], 0.4444444, tolerance = 1e-06)
    expect_equal(res[[4]], 0.8333333, tolerance = 1e-06)
    expect_equal(res[[5]], 0.6666667, tolerance = 1e-06)
    expect_equal(res[[6]], 0.6666667, tolerance = 1e-06)
    expect_equal(res[[7]], 0.5555556, tolerance = 1e-06)
    expect_equal(res[[8]], 0.1666667, tolerance = 1e-06)
})

#
# Done
#

context("acompDS::smk::shutdown")

context("acompDS::smk::done")
