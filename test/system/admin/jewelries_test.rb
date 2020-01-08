require "application_system_test_case"

class Admin::JewelriesTest < ApplicationSystemTestCase
  setup do
    @admin_jewelry = admin_jewelries(:one)
  end

  test "visiting the index" do
    visit admin_jewelries_url
    assert_selector "h1", text: "Admin/Jewelries"
  end

  test "creating a Jewelry" do
    visit admin_jewelries_url
    click_on "New Admin/Jewelry"

    click_on "Create Jewelry"

    assert_text "Jewelry was successfully created"
    click_on "Back"
  end

  test "updating a Jewelry" do
    visit admin_jewelries_url
    click_on "Edit", match: :first

    click_on "Update Jewelry"

    assert_text "Jewelry was successfully updated"
    click_on "Back"
  end

  test "destroying a Jewelry" do
    visit admin_jewelries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Jewelry was successfully destroyed"
  end
end
