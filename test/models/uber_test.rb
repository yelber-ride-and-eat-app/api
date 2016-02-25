require 'test_helper'

class UberTest < ActiveSupport::TestCase
  test "retreive UberX price range" do
    u = Uber.new(JSON.parse(File.read("test/models/uber_test.json")))

    assert_equal "$6-8", u.xprice
  end

  test "retreive UberXL price range" do
    u = Uber.new(JSON.parse(File.read("test/models/uber_test.json")))

    assert_equal "$9-12", u.xlprice
  end

  test "retreive UberSELECT price range" do
    u = Uber.new(JSON.parse(File.read("test/models/uber_test.json")))

    assert_equal "$12-16", u.selectprice
  end

  test "retreive trip distance" do
    u = Uber.new(JSON.parse(File.read("test/models/uber_test.json")))

    assert_equal 3.42, u.distance
  end
  
end
