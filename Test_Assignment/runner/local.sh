#!/usr/bin/env bash

export BROWSERSTACK_USERNAME=<Please enter username>
export BROWSERSTACK_ACCESS_KEY=<Please enter key>

# shellcheck disable=SC2102
rake vivino:run[android] BROWSERSTACK=OFF
allure generate reports/allure-results-json/ --clean && allure open