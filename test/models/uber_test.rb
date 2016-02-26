require 'test_helper'

class UberTest < ActiveSupport::TestCase
  test "retreive UberX price range" do
    u = Uber.new

    assert_equal "$6-8", u.xprice
  end

  test "retreive UberXL price range" do
    u = Uber.new

    assert_equal "$9-12", u.xlprice
  end

  test "retreive UberSELECT price range" do
    u = Uber.new

    assert_equal "$12-16", u.selectprice
  end

  test "retreive trip distance" do
    u = Uber.new

    assert_equal 3.42, u.distance
  end

  test "retrieve response given latitude and longitude" do
    u = Uber.new(latitude: "36.0339433397368", longitude: "-78.8919607517747")

    assert_equal 3.53, u.distance
  end

end
