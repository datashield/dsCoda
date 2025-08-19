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

context("irEMDS::arg::setup")

set.standard.disclosure.settings()

#
# Tests
#

context("irEMDS::arg::no parameters")
test_that("no parameters", {
    expect_error(irEMDS(), "could not find function \"irEMDS\"", fixed = TRUE)
})

#context("irEMDS::arg::pred_obj is NULL")
# test_that("pred_obj is NULL", {
#     expect_error(irEMDS(pred_obj = NULL), "invalid first argument", fixed = TRUE)
# })

#context("irEMDS::arg::missing pred_obj")
#test_that("missing pred_obj", {
#    pred_obj <- "pred"
#
#    expect_error(irEMDS(pred_obj = pred_obj), "The specified pred_obj does not exist", fixed = TRUE)
#})

#
# Done
#

context("irEMDS::arg::shutdown")

context("irEMDS::arg::done")
