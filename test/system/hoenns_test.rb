require "application_system_test_case"

class HoennsTest < ApplicationSystemTestCase
  setup do
    @hoenn = hoenns(:one)
  end

  test "visiting the index" do
    visit hoenns_url
    assert_selector "h1", text: "Hoenns"
  end

  test "creating a Hoenn" do
    visit hoenns_url
    click_on "New Hoenn"

    fill_in "Description", with: @hoenn.description
    fill_in "Height", with: @hoenn.height
    fill_in "Name", with: @hoenn.name
    fill_in "Type 1", with: @hoenn.type_1
    fill_in "Type 2", with: @hoenn.type_2
    fill_in "Weight", with: @hoenn.weight
    click_on "Create Hoenn"

    assert_text "Hoenn was successfully created"
    click_on "Back"
  end

  test "updating a Hoenn" do
    visit hoenns_url
    click_on "Edit", match: :first

    fill_in "Description", with: @hoenn.description
    fill_in "Height", with: @hoenn.height
    fill_in "Name", with: @hoenn.name
    fill_in "Type 1", with: @hoenn.type_1
    fill_in "Type 2", with: @hoenn.type_2
    fill_in "Weight", with: @hoenn.weight
    click_on "Update Hoenn"

    assert_text "Hoenn was successfully updated"
    click_on "Back"
  end

  test "destroying a Hoenn" do
    visit hoenns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hoenn was successfully destroyed"
  end
end
