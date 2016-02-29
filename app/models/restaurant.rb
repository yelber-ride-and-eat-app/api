class Restaurant

  def initialize(keyword: "", location: "")
    if keyword == "" || location == ""
      @sample_response = JSON.parse(File.read("test/models/yelp_test.json"))
    else
      client = Yelp::Client.new({ consumer_key: ENV["YELP_CONSUMER_KEY"],
                                  consumer_secret: ENV["YELP_CONSUMER_SECRET"],
                                  token: ENV["YELP_TOKEN"],
                                  token_secret: ENV["YELP_TOKEN_SECRET"]
                                  })
      @response = client.search(location, { term: keyword, limit: 1, sort: 2})
    end
  end

  def latitude
    return @sample_response["businesses"][0]["location"]["coordinate"]["latitude"] if @sample_response
    @response.businesses[0].location.coordinate.latitude
  end

  def longitude
    return @sample_response["businesses"][0]["location"]["coordinate"]["longitude"] if @sample_response
    @response.businesses[0].location.coordinate.longitude
  end

  def rating
    return @sample_response["businesses"][0]["rating"] if @sample_response
    @response.businesses[0].rating
  end

  def name
    return @sample_response["businesses"][0]["name"] if @sample_response
    @response.businesses[0].name
  end

  def category
    return @sample_response["businesses"][0]["categories"][0][0] if @sample_response
    @response.businesses[0].categories[0][0]
  end

  def number_of_reviews
    return @sample_response["businesses"][0]["review_count"] if @sample_response
    @response.businesses[0].review_count
  end

end
