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

context("lrEMDS::smk::setup")

set.standard.disclosure.settings()

#
# Tests
#

context("lrEMDS::smk::simple example")
test_that("simple example", {
    X     <- "D"
    D     <- data.frame(A = c(1.0, 2.0, 4.0, 5.0, 6.0, 7.0, 5.5, 3.1), B = c(5.0, 6.0, 6.6, 1.1, 2.0, 4.0, 4.4, 1.4), C = c(2.0, 4.0, 3.0, 1.5, 5.0, 1.1, 7.5, 6.7),
                        D = c(1.0, 2.0, 2.0, 5.0, 5.5, 1.5, 2.3, 4.1), E = c(5.0, 1.1, 2.0, 4.0, 2.2, 4.1, 2.7, 2.1), F = c(2.0, 4.0, 5.0, 1.1, 2.5, 5.1, 8.1, 4.7))
    dl    <- c(1.1, 1.2, 1.3, 1.4, 1.5, 1.6)
    label <- 1.0

    res <- lrEMDS(X = X, label = label, dl = dl)

    expect_length(res, 6)
    expect_true(all(class(res) %in% c('data.frame')))
    expect_true(all(colnames(res) %in% c('A', 'B', 'C', 'D', 'E', 'F')))
    expect_true(all(class(res[1]) %in% c('data.frame')))
    expect_true(all(colnames(res[1]) %in% c('A')))
    expect_true(all(class(res[2]) %in% c('data.frame')))
    expect_true(all(colnames(res[2]) %in% c('B')))
    expect_true(all(class(res[3]) %in% c('data.frame')))
    expect_true(all(colnames(res[3]) %in% c('C')))
    expect_true(all(class(res[4]) %in% c('data.frame')))
    expect_true(all(colnames(res[4]) %in% c('D')))
    expect_true(all(class(res[5]) %in% c('data.frame')))
    expect_true(all(colnames(res[5]) %in% c('E')))
    expect_true(all(class(res[6]) %in% c('data.frame')))
    expect_true(all(colnames(res[6]) %in% c('F')))

    expect_equal(res[[1]][[1]], 0.7096006, tolerance = 1.e-6)
    expect_equal(res[[4]][[1]], 1.1007540, tolerance = 1.e-6)
})

#
# Done
#

context("lrEMDS::smk::shutdown")

context("lrEMDS::smk::done")
