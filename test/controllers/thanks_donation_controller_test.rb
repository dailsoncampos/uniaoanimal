require 'test_helper'

class ThanksDonationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get thanks_donation_index_url
    assert_response :success
  end

end
