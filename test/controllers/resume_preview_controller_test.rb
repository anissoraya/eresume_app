require 'test_helper'

class ResumePreviewControllerTest < ActionDispatch::IntegrationTest
  test "should get preview" do
    get resume_preview_preview_url
    assert_response :success
  end

end
