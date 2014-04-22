require 'test_helper'

class CmsOutputControllerTest < ActionController::TestCase
  test "should get output" do
    get :output
    assert_response :success
  end

end
