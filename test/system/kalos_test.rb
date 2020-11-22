require "application_system_test_case"

class KalosTest < ApplicationSystemTestCase
  setup do
    @kalo = kalos(:one)
  end

  test "visiting the index" do
    visit kalos_url
    assert_selector "h1", text: "Kalos"
  end

  test "creating a Kalo" do
    visit kalos_url
    click_on "New Kalo"

    fill_in "Description", with: @kalo.description
    fill_in "Height", with: @kalo.height
    fill_in "Name", with: @kalo.name
    fill_in "Type 1", with: @kalo.type_1
    fill_in "Type 2", with: @kalo.type_2
    fill_in "Weight", with: @kalo.weight
    click_on "Create Kalo"

    assert_text "Kalo was successfully created"
    click_on "Back"
  end

  test "updating a Kalo" do
    visit kalos_url
    click_on "Edit", match: :first

    fill_in "Description", with: @kalo.description
    fill_in "Height", with: @kalo.height
    fill_in "Name", with: @kalo.name
    fill_in "Type 1", with: @kalo.type_1
    fill_in "Type 2", with: @kalo.type_2
    fill_in "Weight", with: @kalo.weight
    click_on "Update Kalo"

    assert_text "Kalo was successfully updated"
    click_on "Back"
  end

  test "destroying a Kalo" do
    visit kalos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kalo was successfully destroyed"
  end
end
