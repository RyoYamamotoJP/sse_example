require 'test_helper'

class SsesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sses_index_url
    assert_response :success
  end

end
