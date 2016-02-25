require 'test_helper'

class UberTest < ActiveSupport::TestCase
  test "retreive UberX price range" do
    u = Uber.new(JSON.parse(File.read("test/models/uber_test.json")))

    assert_equal "$6-8", u.xprice
  end
end
