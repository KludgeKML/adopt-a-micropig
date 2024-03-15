require "application_system_test_case"

class MicropigsTest < ApplicationSystemTestCase
  setup do
    @micropig = micropigs(:one)
  end

  test "visiting the index" do
    visit micropigs_url
    assert_selector "h1", text: "Micropigs"
  end

  test "should create micropig" do
    visit micropigs_url
    click_on "New micropig"

    fill_in "Age", with: @micropig.age
    fill_in "Name", with: @micropig.name
    fill_in "Notes", with: @micropig.notes
    click_on "Create Micropig"

    assert_text "Micropig was successfully created"
    click_on "Back"
  end

  test "should update Micropig" do
    visit micropig_url(@micropig)
    click_on "Edit this micropig", match: :first

    fill_in "Age", with: @micropig.age
    fill_in "Name", with: @micropig.name
    fill_in "Notes", with: @micropig.notes
    click_on "Update Micropig"

    assert_text "Micropig was successfully updated"
    click_on "Back"
  end

  test "should destroy Micropig" do
    visit micropig_url(@micropig)
    click_on "Destroy this micropig", match: :first

    assert_text "Micropig was successfully destroyed"
  end
end
