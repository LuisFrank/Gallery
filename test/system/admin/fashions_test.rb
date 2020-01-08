require "application_system_test_case"

class Admin::FashionsTest < ApplicationSystemTestCase
  setup do
    @admin_fashion = admin_fashions(:one)
  end

  test "visiting the index" do
    visit admin_fashions_url
    assert_selector "h1", text: "Admin/Fashions"
  end

  test "creating a Fashion" do
    visit admin_fashions_url
    click_on "New Admin/Fashion"

    click_on "Create Fashion"

    assert_text "Fashion was successfully created"
    click_on "Back"
  end

  test "updating a Fashion" do
    visit admin_fashions_url
    click_on "Edit", match: :first

    click_on "Update Fashion"

    assert_text "Fashion was successfully updated"
    click_on "Back"
  end

  test "destroying a Fashion" do
    visit admin_fashions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fashion was successfully destroyed"
  end
end
