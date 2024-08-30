require "test_helper"

class UserSeatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_seat = user_seats(:one)
  end

  test "should get index" do
    get user_seats_url
    assert_response :success
  end

  test "should get new" do
    get new_user_seat_url
    assert_response :success
  end

  test "should create user_seat" do
    assert_difference("UserSeat.count") do
      post user_seats_url, params: { user_seat: { from: @user_seat.from, to: @user_seat.to } }
    end

    assert_redirected_to user_seat_url(UserSeat.last)
  end

  test "should show user_seat" do
    get user_seat_url(@user_seat)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_seat_url(@user_seat)
    assert_response :success
  end

  test "should update user_seat" do
    patch user_seat_url(@user_seat), params: { user_seat: { from: @user_seat.from, to: @user_seat.to } }
    assert_redirected_to user_seat_url(@user_seat)
  end

  test "should destroy user_seat" do
    assert_difference("UserSeat.count", -1) do
      delete user_seat_url(@user_seat)
    end

    assert_redirected_to user_seats_url
  end
end
