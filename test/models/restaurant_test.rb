require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  test "retrieve latitude and longitude for restaurant" do
    y = Restaurant.new(JSON.parse(File.read("test/models/yelp_test.json")))

    assert_equal 36.0339433397368, y.latitude
    assert_equal -78.8919607517747, y.longitude
  end

  test "retreive restaurant rating" do
    y = Restaurant.new(JSON.parse(File.read("test/models/yelp_test.json")))

    assert_equal 4.5, y.rating
  end

  test "retreive restaurant name" do
    y = Restaurant.new(JSON.parse(File.read("test/models/yelp_test.json")))

    assert_equal "La Superior Carniceria", y.name
  end

  test "retreive restaurant category" do
    y = Restaurant.new(JSON.parse(File.read("test/models/yelp_test.json")))

    assert_equal "Mexican", y.category
  end
end
