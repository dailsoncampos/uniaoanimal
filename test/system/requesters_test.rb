require "application_system_test_case"

class RequestersTest < ApplicationSystemTestCase
  setup do
    @requester = requesters(:one)
  end

  test "visiting the index" do
    visit requesters_url
    assert_selector "h1", text: "Requesters"
  end

  test "creating a Requester" do
    visit requesters_url
    click_on "New Requester"

    fill_in "City", with: @requester.city
    fill_in "Cpf", with: @requester.cpf
    fill_in "Email", with: @requester.email
    fill_in "Fenced plot", with: @requester.fenced_plot
    fill_in "Identify", with: @requester.identify
    fill_in "Name", with: @requester.name
    fill_in "Number", with: @requester.number
    fill_in "Phone", with: @requester.phone
    fill_in "Referency point", with: @requester.referency_point
    fill_in "Residence", with: @requester.residence
    fill_in "Sector", with: @requester.sector
    fill_in "Street", with: @requester.street
    fill_in "Zip", with: @requester.zip
    click_on "Create Requester"

    assert_text "Requester was successfully created"
    click_on "Back"
  end

  test "updating a Requester" do
    visit requesters_url
    click_on "Edit", match: :first

    fill_in "City", with: @requester.city
    fill_in "Cpf", with: @requester.cpf
    fill_in "Email", with: @requester.email
    fill_in "Fenced plot", with: @requester.fenced_plot
    fill_in "Identify", with: @requester.identify
    fill_in "Name", with: @requester.name
    fill_in "Number", with: @requester.number
    fill_in "Phone", with: @requester.phone
    fill_in "Referency point", with: @requester.referency_point
    fill_in "Residence", with: @requester.residence
    fill_in "Sector", with: @requester.sector
    fill_in "Street", with: @requester.street
    fill_in "Zip", with: @requester.zip
    click_on "Update Requester"

    assert_text "Requester was successfully updated"
    click_on "Back"
  end

  test "destroying a Requester" do
    visit requesters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Requester was successfully destroyed"
  end
end
