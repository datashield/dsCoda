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

context("acompDS::arg::setup")

set.standard.disclosure.settings()

#
# Tests
#

context("acompDS::arg::no parameters")
test_that("no parameters", {
    expect_error(acompDS(), "'data' must be of a vector type, was 'NULL'", fixed = TRUE)
})

context("acompDS::arg::pred_obj is NULL")
# test_that("pred_obj is NULL", {
#     expect_error(acompDS(pred_obj = NULL), "invalid first argument", fixed = TRUE)
# })

#context("acompDS::arg::missing pred_obj")
#test_that("missing pred_obj", {
#    pred_obj <- "pred"
#
#    expect_error(acompDS(pred_obj = pred_obj), "The specified pred_obj does not exist", fixed = TRUE)
#})

#
# Done
#

context("acompDS::arg::shutdown")

context("acompDS::arg::done")
