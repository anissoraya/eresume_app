require 'test_helper'

class UserLayoutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_layout = user_layouts(:one)
  end

  test "should get index" do
    get user_layouts_url
    assert_response :success
  end

  test "should get new" do
    get new_user_layout_url
    assert_response :success
  end

  test "should create user_layout" do
    assert_difference('UserLayout.count') do
      post user_layouts_url, params: { user_layout: {  } }
    end

    assert_redirected_to user_layout_url(UserLayout.last)
  end

  test "should show user_layout" do
    get user_layout_url(@user_layout)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_layout_url(@user_layout)
    assert_response :success
  end

  test "should update user_layout" do
    patch user_layout_url(@user_layout), params: { user_layout: {  } }
    assert_redirected_to user_layout_url(@user_layout)
  end

  test "should destroy user_layout" do
    assert_difference('UserLayout.count', -1) do
      delete user_layout_url(@user_layout)
    end

    assert_redirected_to user_layouts_url
  end
end
