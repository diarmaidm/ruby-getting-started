require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    # assert_select "a", "PLAYON"
    # assert_select "button", "Submit"
    assert_select 'title', "Weather App for city"
  end

end
