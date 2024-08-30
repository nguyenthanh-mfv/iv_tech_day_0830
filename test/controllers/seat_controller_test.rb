require "test_helper"

class SeatControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get seat_index_url
    assert_response :success
  end

  test "should get create" do
    get seat_create_url
    assert_response :success
  end

  test "should get update" do
    get seat_update_url
    assert_response :success
  end

  test "should get delete" do
    get seat_delete_url
    assert_response :success
  end
end
