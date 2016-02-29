class YelberController < ApplicationController
  def show
    y = Restaurant.new(JSON.parse(File.read("test/models/yelp_test.json")))
    u = Uber.new(latitude: y.latitude, longitude: y.longitude)

    render json: {restaurant:
                    {name: "#{y.name}",
                     category: "#{y.category}",
                     rating: "#{y.rating}"},
                  trip:
                    {distance: "#{u.distance} miles",
                     rides: [
                       {type: "UberX",
                        price_estimate: "#{u.xprice}"},
                       {type: "UberXL",
                        price_estimate: "#{u.xlprice}"},
                       {type: "UberSELECT",
                        price_estimate: "#{u.selectprice}"}
                     ]
                   }
                 }
  end
end
