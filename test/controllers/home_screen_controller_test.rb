require 'test_helper'

class HomeScreenControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_screen_index_url
    assert_response :success
  end

end
