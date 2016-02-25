class Uber
  attr_reader :response

  def initialize(response)
    @response = response
  end

  def xprice
    @response["prices"][0]["estimate"]
  end

  def xlprice
    @response["prices"][1]["estimate"]
  end
  
end
