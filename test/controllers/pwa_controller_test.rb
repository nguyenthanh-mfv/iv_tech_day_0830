require "test_helper"

class PwaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pwa_index_url
    assert_response :success
  end
end
