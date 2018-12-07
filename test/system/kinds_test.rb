require "application_system_test_case"

class CategoriesTest < ApplicationSystemTestCase
  setup do
    @category = categories(:one)
  end

  test "visiting the index" do
    visit categories_url
    assert_selector "h1", text: "Categories"
  end

  test "creating a Kind" do
    visit categories_url
    click_on "New Kind"

    fill_in "Description", with: @category.description
    click_on "Create Kind"

    assert_text "Kind was successfully created"
    click_on "Back"
  end

  test "updating a Kind" do
    visit categories_url
    click_on "Edit", match: :first

    fill_in "Description", with: @category.description
    click_on "Update Kind"

    assert_text "Kind was successfully updated"
    click_on "Back"
  end

  test "destroying a Kind" do
    visit categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kind was successfully destroyed"
  end
end
