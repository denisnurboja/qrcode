require 'test_helper'

class CodeControllerTest < ActionDispatch::IntegrationTest
  test "should get page" do
    get code_page_url
    assert_response :success
  end

end
