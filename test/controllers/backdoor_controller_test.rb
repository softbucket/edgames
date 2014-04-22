require 'test_helper'

class BackdoorControllerTest < ActionController::TestCase
  test "should get backdoor" do
    get :backdoor
    assert_response :success
  end

end
