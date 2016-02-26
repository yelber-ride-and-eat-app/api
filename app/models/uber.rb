class Uber
  attr_reader :response

  def initialize(latitude: "", longitude: "")
    if latitude == "" && longitude == ""
      @response = JSON.parse(File.read("test/models/uber_test.json"))
    else
      header = {"Authorization" => "Token #{ENV["UBER_TOKEN"]}"}
      @response = HTTParty.get("https://api.uber.com/v1/estimates/price?start_latitude=35.9929852&start_longitude=-78.9048044&end_latitude=#{latitude}&end_longitude=#{longitude}", headers: header)
    end
  end

  def xprice
    @response["prices"][0]["estimate"]
  end

  def xlprice
    @response["prices"][1]["estimate"]
  end

  def selectprice
    @response["prices"][2]["estimate"]
  end

  def distance
    @response["prices"][0]["distance"]
  end

end
