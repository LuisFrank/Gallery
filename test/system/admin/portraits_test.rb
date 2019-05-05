require "application_system_test_case"

class Admin::PortraitsTest < ApplicationSystemTestCase
  setup do
    @admin_portrait = admin_portraits(:one)
  end

  test "visiting the index" do
    visit admin_portraits_url
    assert_selector "h1", text: "Admin/Portraits"
  end

  test "creating a Portrait" do
    visit admin_portraits_url
    click_on "New Admin/Portrait"

    fill_in "Description", with: @admin_portrait.description
    fill_in "Name", with: @admin_portrait.name
    fill_in "Order", with: @admin_portrait.order
    check "Show" if @admin_portrait.show
    click_on "Create Portrait"

    assert_text "Portrait was successfully created"
    click_on "Back"
  end

  test "updating a Portrait" do
    visit admin_portraits_url
    click_on "Edit", match: :first

    fill_in "Description", with: @admin_portrait.description
    fill_in "Name", with: @admin_portrait.name
    fill_in "Order", with: @admin_portrait.order
    check "Show" if @admin_portrait.show
    click_on "Update Portrait"

    assert_text "Portrait was successfully updated"
    click_on "Back"
  end

  test "destroying a Portrait" do
    visit admin_portraits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Portrait was successfully destroyed"
  end
end
