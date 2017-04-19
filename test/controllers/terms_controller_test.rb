require 'test_helper'

class TermsControllerTest < ActionController::TestCase
  test "should get terms" do
    get :terms
    assert_response :success
  end

end
