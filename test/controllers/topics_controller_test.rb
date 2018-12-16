require 'test_helper'

class TopicsControllerTest < ActionDispatch::IntegrationTest
  test "should get inde" do
    get topics_inde_url
    assert_response :success
  end

end
