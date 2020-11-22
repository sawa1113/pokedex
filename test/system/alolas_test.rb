require "application_system_test_case"

class AlolasTest < ApplicationSystemTestCase
  setup do
    @alola = alolas(:one)
  end

  test "visiting the index" do
    visit alolas_url
    assert_selector "h1", text: "Alolas"
  end

  test "creating a Alola" do
    visit alolas_url
    click_on "New Alola"

    fill_in "Description", with: @alola.description
    fill_in "Height", with: @alola.height
    fill_in "Name", with: @alola.name
    fill_in "Type 1", with: @alola.type_1
    fill_in "Type 2", with: @alola.type_2
    fill_in "Weight", with: @alola.weight
    click_on "Create Alola"

    assert_text "Alola was successfully created"
    click_on "Back"
  end

  test "updating a Alola" do
    visit alolas_url
    click_on "Edit", match: :first

    fill_in "Description", with: @alola.description
    fill_in "Height", with: @alola.height
    fill_in "Name", with: @alola.name
    fill_in "Type 1", with: @alola.type_1
    fill_in "Type 2", with: @alola.type_2
    fill_in "Weight", with: @alola.weight
    click_on "Update Alola"

    assert_text "Alola was successfully updated"
    click_on "Back"
  end

  test "destroying a Alola" do
    visit alolas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alola was successfully destroyed"
  end
end
