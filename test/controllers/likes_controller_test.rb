require 'test_helper'

class LikesControllerTest < ActionController::TestCase
  test "should get count_up" do
    get :count_up
    assert_response :success
  end

end
