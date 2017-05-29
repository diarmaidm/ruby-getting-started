require 'test_helper'

class WeatherControllerTest < ActionController::TestCase
  test "should get weather" do
    # TODO Add tests
    get :weather
    assert_response :success
  end

end
