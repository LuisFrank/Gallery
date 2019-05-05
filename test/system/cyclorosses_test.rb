require "application_system_test_case"

class CyclorossesTest < ApplicationSystemTestCase
  setup do
    @cycloross = cyclorosses(:one)
  end

  test "visiting the index" do
    visit cyclorosses_url
    assert_selector "h1", text: "Cyclorosses"
  end

  test "creating a Cycloross" do
    visit cyclorosses_url
    click_on "New Cycloross"

    click_on "Create Cycloross"

    assert_text "Cycloross was successfully created"
    click_on "Back"
  end

  test "updating a Cycloross" do
    visit cyclorosses_url
    click_on "Edit", match: :first

    click_on "Update Cycloross"

    assert_text "Cycloross was successfully updated"
    click_on "Back"
  end

  test "destroying a Cycloross" do
    visit cyclorosses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cycloross was successfully destroyed"
  end
end
