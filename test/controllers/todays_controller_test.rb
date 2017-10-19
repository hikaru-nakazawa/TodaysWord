require 'test_helper'

class TodaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @today = todays(:one)
  end

  test "should get index" do
    get todays_url
    assert_response :success
  end

  test "should get new" do
    get new_today_url
    assert_response :success
  end

  test "should create today" do
    assert_difference('Today.count') do
      post todays_url, params: { today: { author: @today.author, words: @today.words } }
    end

    assert_redirected_to today_url(Today.last)
  end

  test "should show today" do
    get today_url(@today)
    assert_response :success
  end

  test "should get edit" do
    get edit_today_url(@today)
    assert_response :success
  end

  test "should update today" do
    patch today_url(@today), params: { today: { author: @today.author, words: @today.words } }
    assert_redirected_to today_url(@today)
  end

  test "should destroy today" do
    assert_difference('Today.count', -1) do
      delete today_url(@today)
    end

    assert_redirected_to todays_url
  end
end
