require 'test_helper'

class UberTest < ActiveSupport::TestCase
  test "TO DO NAME TEST" do
    u = Uber.new(JSON.parse(File.read("test/models/uber_test.json")))

  end
end
