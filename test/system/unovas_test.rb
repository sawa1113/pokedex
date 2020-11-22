require "application_system_test_case"

class UnovasTest < ApplicationSystemTestCase
  setup do
    @unova = unovas(:one)
  end

  test "visiting the index" do
    visit unovas_url
    assert_selector "h1", text: "Unovas"
  end

  test "creating a Unova" do
    visit unovas_url
    click_on "New Unova"

    fill_in "Description", with: @unova.description
    fill_in "Height", with: @unova.height
    fill_in "Name", with: @unova.name
    fill_in "Type 1", with: @unova.type_1
    fill_in "Type 2", with: @unova.type_2
    fill_in "Weight", with: @unova.weight
    click_on "Create Unova"

    assert_text "Unova was successfully created"
    click_on "Back"
  end

  test "updating a Unova" do
    visit unovas_url
    click_on "Edit", match: :first

    fill_in "Description", with: @unova.description
    fill_in "Height", with: @unova.height
    fill_in "Name", with: @unova.name
    fill_in "Type 1", with: @unova.type_1
    fill_in "Type 2", with: @unova.type_2
    fill_in "Weight", with: @unova.weight
    click_on "Update Unova"

    assert_text "Unova was successfully updated"
    click_on "Back"
  end

  test "destroying a Unova" do
    visit unovas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Unova was successfully destroyed"
  end
end
