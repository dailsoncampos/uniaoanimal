require 'test_helper'

class EventsPageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get events_page_index_url
    assert_response :success
  end

  test "should get show" do
    get events_page_show_url
    assert_response :success
  end

end
