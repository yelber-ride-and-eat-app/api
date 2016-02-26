class YelberController < ApplicationController
  def show
    u = Uber.new(JSON.parse(File.read("test/models/uber_test.json")))
    y = Yelp.new(JSON.parse(File.read("test/models/yelp_test.json")))

    render json: {restaurant:
                    {name: "#{y.name}",
                     category: "#{y.category}",
                     rating: "#{y.rating}"},
                  trip:
                    {uber_type: "UberX",
                     distance: "#{u.distance} miles",
                     price_estimate: "#{u.xprice}"}
                   }
  end
end
