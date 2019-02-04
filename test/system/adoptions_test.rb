require "application_system_test_case"

class AdoptionsTest < ApplicationSystemTestCase
  setup do
    @adoption = adoptions(:one)
  end

  test "visiting the index" do
    visit adoptions_url
    assert_selector "h1", text: "Adoptions"
  end

  test "creating a Adoption" do
    visit adoptions_url
    click_on "New Adoption"

    fill_in "Adopter", with: @adoption.adopter_id
    fill_in "Animal", with: @adoption.animal_id
    fill_in "Status", with: @adoption.status
    click_on "Create Adoption"

    assert_text "Adoption was successfully created"
    click_on "Back"
  end

  test "updating a Adoption" do
    visit adoptions_url
    click_on "Edit", match: :first

    fill_in "Adopter", with: @adoption.adopter_id
    fill_in "Animal", with: @adoption.animal_id
    fill_in "Status", with: @adoption.status
    click_on "Update Adoption"

    assert_text "Adoption was successfully updated"
    click_on "Back"
  end

  test "destroying a Adoption" do
    visit adoptions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Adoption was successfully destroyed"
  end
end
