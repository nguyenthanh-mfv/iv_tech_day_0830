require "application_system_test_case"

class UserSeatsTest < ApplicationSystemTestCase
  setup do
    @user_seat = user_seats(:one)
  end

  test "visiting the index" do
    visit user_seats_url
    assert_selector "h1", text: "User seats"
  end

  test "should create user seat" do
    visit user_seats_url
    click_on "New user seat"

    fill_in "From", with: @user_seat.from
    fill_in "To", with: @user_seat.to
    click_on "Create User seat"

    assert_text "User seat was successfully created"
    click_on "Back"
  end

  test "should update User seat" do
    visit user_seat_url(@user_seat)
    click_on "Edit this user seat", match: :first

    fill_in "From", with: @user_seat.from.to_s
    fill_in "To", with: @user_seat.to.to_s
    click_on "Update User seat"

    assert_text "User seat was successfully updated"
    click_on "Back"
  end

  test "should destroy User seat" do
    visit user_seat_url(@user_seat)
    click_on "Destroy this user seat", match: :first

    assert_text "User seat was successfully destroyed"
  end
end
