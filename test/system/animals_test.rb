require "application_system_test_case"

class AnimalsTest < ApplicationSystemTestCase
  setup do
    @animal = animals(:one)
  end

  test "visiting the index" do
    visit animals_url
    assert_selector "h1", text: "Animals"
  end

  test "creating a Animal" do
    visit animals_url
    click_on "New Animal"

    fill_in "Agent", with: @animal.agent_id
    fill_in "Breed", with: @animal.breed
    fill_in "Color", with: @animal.color
    fill_in "Condition", with: @animal.condition
    fill_in "Genre", with: @animal.genre
    fill_in "Name", with: @animal.name
    fill_in "Pelage", with: @animal.pelage
    fill_in "Size", with: @animal.size
    fill_in "Species", with: @animal.species
    fill_in "Status", with: @animal.status
    click_on "Create Animal"

    assert_text "Animal was successfully created"
    click_on "Back"
  end

  test "updating a Animal" do
    visit animals_url
    click_on "Edit", match: :first

    fill_in "Agent", with: @animal.agent_id
    fill_in "Breed", with: @animal.breed
    fill_in "Color", with: @animal.color
    fill_in "Condition", with: @animal.condition
    fill_in "Genre", with: @animal.genre
    fill_in "Name", with: @animal.name
    fill_in "Pelage", with: @animal.pelage
    fill_in "Size", with: @animal.size
    fill_in "Species", with: @animal.species
    fill_in "Status", with: @animal.status
    click_on "Update Animal"

    assert_text "Animal was successfully updated"
    click_on "Back"
  end

  test "destroying a Animal" do
    visit animals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Animal was successfully destroyed"
  end
end
