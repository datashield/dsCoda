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

#context("lrEMDS::arg::pred_obj is NULL")
# test_that("pred_obj is NULL", {
#     expect_error(lrEMDS(pred_obj = NULL), "invalid first argument", fixed = TRUE)
# })

#context("lrEMDS::arg::missing pred_obj")
#test_that("missing pred_obj", {
#    pred_obj <- "pred"
#
#    expect_error(lrEMDS(pred_obj = pred_obj), "The specified pred_obj does not exist", fixed = TRUE)
#})

#
# Done
#

context("lrEMDS::arg::shutdown")

context("lrEMDS::arg::done")
