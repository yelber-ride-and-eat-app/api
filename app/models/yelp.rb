class Yelp
  attr_reader :response

  def initialize(response)
    @response = response
  end

  def latitude
    @response["businesses"][0]["location"]["coordinate"]["latitude"]
  end

  def longitude
    @response["businesses"][0]["location"]["coordinate"]["longitude"]
  end

  def rating
    @response["businesses"][0]["rating"]
  end
end
