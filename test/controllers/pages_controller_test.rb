require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get news" do
    get pages_news_url
    assert_response :success
  end
end
