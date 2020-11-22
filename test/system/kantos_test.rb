require "application_system_test_case"

class KantosTest < ApplicationSystemTestCase
  setup do
    @kanto = kantos(:one)
  end

  test "visiting the index" do
    visit kantos_url
    assert_selector "h1", text: "Kantos"
  end

  test "creating a Kanto" do
    visit kantos_url
    click_on "New Kanto"

    fill_in "Description", with: @kanto.description
    fill_in "Height", with: @kanto.height
    fill_in "Name", with: @kanto.name
    fill_in "Type 1", with: @kanto.type_1
    fill_in "Type 2", with: @kanto.type_2
    fill_in "Weight", with: @kanto.weight
    click_on "Create Kanto"

    assert_text "Kanto was successfully created"
    click_on "Back"
  end

  test "updating a Kanto" do
    visit kantos_url
    click_on "Edit", match: :first

    fill_in "Description", with: @kanto.description
    fill_in "Height", with: @kanto.height
    fill_in "Name", with: @kanto.name
    fill_in "Type 1", with: @kanto.type_1
    fill_in "Type 2", with: @kanto.type_2
    fill_in "Weight", with: @kanto.weight
    click_on "Update Kanto"

    assert_text "Kanto was successfully updated"
    click_on "Back"
  end

  test "destroying a Kanto" do
    visit kantos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kanto was successfully destroyed"
  end
end
