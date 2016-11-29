require 'test_helper'

class ResumeDetailControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get resume_detail_index_url
    assert_response :success
  end

end
