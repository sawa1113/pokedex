require "application_system_test_case"

class SinnohsTest < ApplicationSystemTestCase
  setup do
    @sinnoh = sinnohs(:one)
  end

  test "visiting the index" do
    visit sinnohs_url
    assert_selector "h1", text: "Sinnohs"
  end

  test "creating a Sinnoh" do
    visit sinnohs_url
    click_on "New Sinnoh"

    fill_in "Description", with: @sinnoh.description
    fill_in "Height", with: @sinnoh.height
    fill_in "Name", with: @sinnoh.name
    fill_in "Type 1", with: @sinnoh.type_1
    fill_in "Type 2", with: @sinnoh.type_2
    fill_in "Weight", with: @sinnoh.weight
    click_on "Create Sinnoh"

    assert_text "Sinnoh was successfully created"
    click_on "Back"
  end

  test "updating a Sinnoh" do
    visit sinnohs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @sinnoh.description
    fill_in "Height", with: @sinnoh.height
    fill_in "Name", with: @sinnoh.name
    fill_in "Type 1", with: @sinnoh.type_1
    fill_in "Type 2", with: @sinnoh.type_2
    fill_in "Weight", with: @sinnoh.weight
    click_on "Update Sinnoh"

    assert_text "Sinnoh was successfully updated"
    click_on "Back"
  end

  test "destroying a Sinnoh" do
    visit sinnohs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sinnoh was successfully destroyed"
  end
end
