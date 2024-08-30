require "test_helper"

class UserSearControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_sear_create_url
    assert_response :success
  end

  test "should get destroy" do
    get user_sear_destroy_url
    assert_response :success
  end
end
