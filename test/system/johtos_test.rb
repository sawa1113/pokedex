require "application_system_test_case"

class JohtosTest < ApplicationSystemTestCase
  setup do
    @johto = johtos(:one)
  end

  test "visiting the index" do
    visit johtos_url
    assert_selector "h1", text: "Johtos"
  end

  test "creating a Johto" do
    visit johtos_url
    click_on "New Johto"

    fill_in "Description", with: @johto.description
    fill_in "Height", with: @johto.height
    fill_in "Name", with: @johto.name
    fill_in "Type 1", with: @johto.type_1
    fill_in "Type 2", with: @johto.type_2
    fill_in "Weight", with: @johto.weight
    click_on "Create Johto"

    assert_text "Johto was successfully created"
    click_on "Back"
  end

  test "updating a Johto" do
    visit johtos_url
    click_on "Edit", match: :first

    fill_in "Description", with: @johto.description
    fill_in "Height", with: @johto.height
    fill_in "Name", with: @johto.name
    fill_in "Type 1", with: @johto.type_1
    fill_in "Type 2", with: @johto.type_2
    fill_in "Weight", with: @johto.weight
    click_on "Update Johto"

    assert_text "Johto was successfully updated"
    click_on "Back"
  end

  test "destroying a Johto" do
    visit johtos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Johto was successfully destroyed"
  end
end
