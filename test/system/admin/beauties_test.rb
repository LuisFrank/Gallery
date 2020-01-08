require "application_system_test_case"

class Admin::BeautiesTest < ApplicationSystemTestCase
  setup do
    @admin_beauty = admin_beauties(:one)
  end

  test "visiting the index" do
    visit admin_beauties_url
    assert_selector "h1", text: "Admin/Beauties"
  end

  test "creating a Beauty" do
    visit admin_beauties_url
    click_on "New Admin/Beauty"

    click_on "Create Beauty"

    assert_text "Beauty was successfully created"
    click_on "Back"
  end

  test "updating a Beauty" do
    visit admin_beauties_url
    click_on "Edit", match: :first

    click_on "Update Beauty"

    assert_text "Beauty was successfully updated"
    click_on "Back"
  end

  test "destroying a Beauty" do
    visit admin_beauties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Beauty was successfully destroyed"
  end
end
