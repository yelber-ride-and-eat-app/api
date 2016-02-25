class Uber
  attr_reader :response

  def initialize(response)
    @response = response
  end

  def xprice
    @response["prices"][0]["estimate"]
  end

end
