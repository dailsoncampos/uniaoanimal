require 'test_helper'

class SuggestionDonationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @suggestion_donation = suggestion_donations(:one)
  end

  test "should get index" do
    get suggestion_donations_url
    assert_response :success
  end

  test "should get new" do
    get new_suggestion_donation_url
    assert_response :success
  end

  test "should create suggestion_donation" do
    assert_difference('SuggestionDonation.count') do
      post suggestion_donations_url, params: { suggestion_donation: { description: @suggestion_donation.description, kind: @suggestion_donation.kind } }
    end

    assert_redirected_to suggestion_donation_url(SuggestionDonation.last)
  end

  test "should show suggestion_donation" do
    get suggestion_donation_url(@suggestion_donation)
    assert_response :success
  end

  test "should get edit" do
    get edit_suggestion_donation_url(@suggestion_donation)
    assert_response :success
  end

  test "should update suggestion_donation" do
    patch suggestion_donation_url(@suggestion_donation), params: { suggestion_donation: { description: @suggestion_donation.description, kind: @suggestion_donation.kind } }
    assert_redirected_to suggestion_donation_url(@suggestion_donation)
  end

  test "should destroy suggestion_donation" do
    assert_difference('SuggestionDonation.count', -1) do
      delete suggestion_donation_url(@suggestion_donation)
    end

    assert_redirected_to suggestion_donations_url
  end
end
