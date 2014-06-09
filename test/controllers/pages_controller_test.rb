require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get form1" do
    get :form1
    assert_response :success
  end

end
