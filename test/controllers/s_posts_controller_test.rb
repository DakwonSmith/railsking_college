require 'test_helper'

class SPostsControllerTest < ActionDispatch::IntegrationTest
  test "should get feed" do
    get s_posts_feed_url
    assert_response :success
  end

end
