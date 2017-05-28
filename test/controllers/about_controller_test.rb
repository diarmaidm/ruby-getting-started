require 'test_helper'

class AboutControllerTest < ActionController::TestCase
  test "should get the about page" do
    get :about
    assert_response :success
    assert_select "h1", "About us."
    assert true
  end
end
