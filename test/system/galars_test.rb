require "application_system_test_case"

class GalarsTest < ApplicationSystemTestCase
  setup do
    @galar = galars(:one)
  end

  test "visiting the index" do
    visit galars_url
    assert_selector "h1", text: "Galars"
  end

  test "creating a Galar" do
    visit galars_url
    click_on "New Galar"

    fill_in "Description", with: @galar.description
    fill_in "Height", with: @galar.height
    fill_in "Name", with: @galar.name
    fill_in "Type 1", with: @galar.type_1
    fill_in "Type 2", with: @galar.type_2
    fill_in "Weight", with: @galar.weight
    click_on "Create Galar"

    assert_text "Galar was successfully created"
    click_on "Back"
  end

  test "updating a Galar" do
    visit galars_url
    click_on "Edit", match: :first

    fill_in "Description", with: @galar.description
    fill_in "Height", with: @galar.height
    fill_in "Name", with: @galar.name
    fill_in "Type 1", with: @galar.type_1
    fill_in "Type 2", with: @galar.type_2
    fill_in "Weight", with: @galar.weight
    click_on "Update Galar"

    assert_text "Galar was successfully updated"
    click_on "Back"
  end

  test "destroying a Galar" do
    visit galars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Galar was successfully destroyed"
  end
end
