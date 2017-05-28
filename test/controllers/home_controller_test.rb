require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select "a", "PLAYON"
    assert_select "button", "Submit"
    assert_select 'title', "Ruby Getting Started on Heroku"
  end

end
