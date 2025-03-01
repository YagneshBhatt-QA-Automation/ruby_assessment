# frozen_string_literal: true

require 'appium_lib'
require 'allure-cucumber'
require 'byebug'
require 'cucumber'
require 'faker'
require 'logger'
require 'report_builder'
require 'rspec'
require 'selenium-webdriver'
require File.dirname(__FILE__) + '/../helpers/baseTest'

include RSpec::Matchers
include VIVINO

Allure.configure do |c|
  c.clean_results_directory = true
  c.logging_level = Logger::INFO
end
