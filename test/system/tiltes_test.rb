require "application_system_test_case"

class TiltesTest < ApplicationSystemTestCase
  setup do
    @tilte = tiltes(:one)
  end

  test "visiting the index" do
    visit tiltes_url
    assert_selector "h1", text: "Tiltes"
  end

  test "creating a Tilte" do
    visit tiltes_url
    click_on "New Tilte"

    fill_in "Body", with: @tilte.body
    click_on "Create Tilte"

    assert_text "Tilte was successfully created"
    click_on "Back"
  end

  test "updating a Tilte" do
    visit tiltes_url
    click_on "Edit", match: :first

    fill_in "Body", with: @tilte.body
    click_on "Update Tilte"

    assert_text "Tilte was successfully updated"
    click_on "Back"
  end

  test "destroying a Tilte" do
    visit tiltes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tilte was successfully destroyed"
  end
end
