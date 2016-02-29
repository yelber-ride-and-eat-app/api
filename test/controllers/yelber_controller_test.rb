require 'test_helper'

class YelberControllerTest < ActionController::TestCase
  test "gets correct response" do
    get :show, term: "tacos", location: "Durham, NC"

    assert response.body.include?("La Superior Carniceria")
    assert response.body.include?("Mexican")
  end

end
