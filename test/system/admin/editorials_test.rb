require "application_system_test_case"

class Admin::EditorialsTest < ApplicationSystemTestCase
  setup do
    @admin_editorial = admin_editorials(:one)
  end

  test "visiting the index" do
    visit admin_editorials_url
    assert_selector "h1", text: "Admin/Editorials"
  end

  test "creating a Editorial" do
    visit admin_editorials_url
    click_on "New Admin/Editorial"

    fill_in "Description", with: @admin_editorial.description
    fill_in "Name", with: @admin_editorial.name
    fill_in "Order", with: @admin_editorial.order
    check "Show" if @admin_editorial.show
    click_on "Create Editorial"

    assert_text "Editorial was successfully created"
    click_on "Back"
  end

  test "updating a Editorial" do
    visit admin_editorials_url
    click_on "Edit", match: :first

    fill_in "Description", with: @admin_editorial.description
    fill_in "Name", with: @admin_editorial.name
    fill_in "Order", with: @admin_editorial.order
    check "Show" if @admin_editorial.show
    click_on "Update Editorial"

    assert_text "Editorial was successfully updated"
    click_on "Back"
  end

  test "destroying a Editorial" do
    visit admin_editorials_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Editorial was successfully destroyed"
  end
end
