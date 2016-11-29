require 'test_helper'

class PersonalDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personal_detail = personal_details(:one)
  end

  test "should get index" do
    get personal_details_url
    assert_response :success
  end

  test "should get new" do
    get new_personal_detail_url
    assert_response :success
  end

  test "should create personal_detail" do
    assert_difference('PersonalDetail.count') do
      post personal_details_url, params: { personal_detail: { address: @personal_detail.address, city: @personal_detail.city, name: @personal_detail.name, phone_no: @personal_detail.phone_no, postal_code: @personal_detail.postal_code, state: @personal_detail.state, user_id: @personal_detail.user_id } }
    end

    assert_redirected_to personal_detail_url(PersonalDetail.last)
  end

  test "should show personal_detail" do
    get personal_detail_url(@personal_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_personal_detail_url(@personal_detail)
    assert_response :success
  end

  test "should update personal_detail" do
    patch personal_detail_url(@personal_detail), params: { personal_detail: { address: @personal_detail.address, city: @personal_detail.city, name: @personal_detail.name, phone_no: @personal_detail.phone_no, postal_code: @personal_detail.postal_code, state: @personal_detail.state, user_id: @personal_detail.user_id } }
    assert_redirected_to personal_detail_url(@personal_detail)
  end

  test "should destroy personal_detail" do
    assert_difference('PersonalDetail.count', -1) do
      delete personal_detail_url(@personal_detail)
    end

    assert_redirected_to personal_details_url
  end
end
