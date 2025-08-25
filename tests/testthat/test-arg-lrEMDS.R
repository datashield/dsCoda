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

context("lrEMDS::arg::setup")

set.standard.disclosure.settings()

#
# Tests
#

context("lrEMDS::arg::no parameters")
test_that("no parameters", {
    expect_error(lrEMDS(), "argument is of length zero", fixed = TRUE)
})

context("lrEMDS::arg::X not present")
test_that("X not present", {
    X <- "D"

    expect_error(lrEMDS(X = X), "comparison (<) is possible only for atomic and list types", fixed = TRUE)
})

#
# Done
#

context("lrEMDS::arg::shutdown")

context("lrEMDS::arg::done")
