require 'test_helper'

class YelberControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "gets correct response" do
    get :show, terms: "tacos"

    assert response.body.include?("La Superior Carniceria")
    assert response.body.include?("Mexican")
    assert response.body.include?("3.42")
  end

end
