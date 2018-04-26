ENV["RAILS_ENV"] ||= "test"
require File.expand_path("../../config/environment", __DIR__)
require "rails/test_help"

module ActiveSupport
  class TestCase
    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical.
    fixtures :all
  end
end
