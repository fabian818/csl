require 'test_helper'

class AuthorizationsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get recents" do
    get :recents
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
