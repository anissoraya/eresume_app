require 'test_helper'

class ManageLayoutControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get manage_layout_index_url
    assert_response :success
  end

end
