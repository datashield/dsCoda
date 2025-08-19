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

context("ilrDS::arg::setup")

set.standard.disclosure.settings()

#
# Tests
#

context("ilrDS::arg::no parameters")
test_that("no parameters", {
    expect_error(ilrDS(), "'data' must be of a vector type, was 'NULL'", fixed = TRUE)
})

context("ilrDS::arg::X not present")
test_that("X not present", {
    X <- "D"

    expect_error(ilrDS(X = X), "default method not implemented for type 'list'", fixed = TRUE)
})

context("ilrDS::arg::X not NULL V not present")
test_that("X not NULL and V not present", {
    X <- "D"
    D <- data.frame(A = c(1.0, 2.0, 4.0, 5.0), B = c(5.0, 1.0, 2.0, 4.0), C = c(2.0, 4.0, 5.0, 1.0))
    V <- "novar"

    expect_error(ilrDS(X = X, V = V), "requires numeric/complex matrix/vector arguments", fixed = TRUE)
})

#
# Done
#

context("ilrDS::arg::shutdown")

context("ilrDS::arg::done")
