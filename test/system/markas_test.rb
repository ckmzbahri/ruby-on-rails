require "application_system_test_case"

class MarkasTest < ApplicationSystemTestCase
  setup do
    @marka = markas(:one)
  end

  test "visiting the index" do
    visit markas_url
    assert_selector "h1", text: "Markas"
  end

  test "should create marka" do
    visit markas_url
    click_on "New marka"

    fill_in "Name", with: @marka.name
    click_on "Create Marka"

    assert_text "Marka was successfully created"
    click_on "Back"
  end

  test "should update Marka" do
    visit marka_url(@marka)
    click_on "Edit this marka", match: :first

    fill_in "Name", with: @marka.name
    click_on "Update Marka"

    assert_text "Marka was successfully updated"
    click_on "Back"
  end

  test "should destroy Marka" do
    visit marka_url(@marka)
    click_on "Destroy this marka", match: :first

    assert_text "Marka was successfully destroyed"
  end
end
