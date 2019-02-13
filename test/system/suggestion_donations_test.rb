require "application_system_test_case"

class SuggestionDonationsTest < ApplicationSystemTestCase
  setup do
    @suggestion_donation = suggestion_donations(:one)
  end

  test "visiting the index" do
    visit suggestion_donations_url
    assert_selector "h1", text: "Suggestion Donations"
  end

  test "creating a Suggestion donation" do
    visit suggestion_donations_url
    click_on "New Suggestion Donation"

    fill_in "Description", with: @suggestion_donation.description
    fill_in "Kind", with: @suggestion_donation.kind
    click_on "Create Suggestion donation"

    assert_text "Suggestion donation was successfully created"
    click_on "Back"
  end

  test "updating a Suggestion donation" do
    visit suggestion_donations_url
    click_on "Edit", match: :first

    fill_in "Description", with: @suggestion_donation.description
    fill_in "Kind", with: @suggestion_donation.kind
    click_on "Update Suggestion donation"

    assert_text "Suggestion donation was successfully updated"
    click_on "Back"
  end

  test "destroying a Suggestion donation" do
    visit suggestion_donations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Suggestion donation was successfully destroyed"
  end
end
