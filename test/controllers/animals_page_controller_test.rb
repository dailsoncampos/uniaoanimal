require 'test_helper'

class AnimalsPageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get animals_page_index_url
    assert_response :success
  end

  test "should get show" do
    get animals_page_show_url
    assert_response :success
  end

end
