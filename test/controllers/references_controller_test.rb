require 'test_helper'

class ReferencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reference = references(:one)
  end

  test "should get index" do
    get references_url
    assert_response :success
  end

  test "should get new" do
    get new_reference_url
    assert_response :success
  end

  test "should create reference" do
    assert_difference('Reference.count') do
      post references_url, params: { reference: { address: @reference.address, company: @reference.company, description: @reference.description, email: @reference.email, name: @reference.name, phone: @reference.phone, relationship: @reference.relationship, user_id: @reference.user_id } }
    end

    assert_redirected_to reference_url(Reference.last)
  end

  test "should show reference" do
    get reference_url(@reference)
    assert_response :success
  end

  test "should get edit" do
    get edit_reference_url(@reference)
    assert_response :success
  end

  test "should update reference" do
    patch reference_url(@reference), params: { reference: { address: @reference.address, company: @reference.company, description: @reference.description, email: @reference.email, name: @reference.name, phone: @reference.phone, relationship: @reference.relationship, user_id: @reference.user_id } }
    assert_redirected_to reference_url(@reference)
  end

  test "should destroy reference" do
    assert_difference('Reference.count', -1) do
      delete reference_url(@reference)
    end

    assert_redirected_to references_url
  end
end
