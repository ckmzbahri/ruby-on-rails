require "application_system_test_case"

class UrunsTest < ApplicationSystemTestCase
  setup do
    @urun = uruns(:one)
  end

  test "visiting the index" do
    visit uruns_url
    assert_selector "h1", text: "Uruns"
  end

  test "should create urun" do
    visit uruns_url
    click_on "New urun"

    fill_in "Marka", with: @urun.marka_id
    fill_in "Name", with: @urun.name
    click_on "Create Urun"

    assert_text "Urun was successfully created"
    click_on "Back"
  end

  test "should update Urun" do
    visit urun_url(@urun)
    click_on "Edit this urun", match: :first

    fill_in "Marka", with: @urun.marka_id
    fill_in "Name", with: @urun.name
    click_on "Update Urun"

    assert_text "Urun was successfully updated"
    click_on "Back"
  end

  test "should destroy Urun" do
    visit urun_url(@urun)
    click_on "Destroy this urun", match: :first

    assert_text "Urun was successfully destroyed"
  end
end
