require "application_system_test_case"

class Admin::BiographiesTest < ApplicationSystemTestCase
  setup do
    @admin_biography = admin_biographies(:one)
  end

  test "visiting the index" do
    visit admin_biographies_url
    assert_selector "h1", text: "Admin/Biographies"
  end

  test "creating a Biography" do
    visit admin_biographies_url
    click_on "New Admin/Biography"

    fill_in "Message", with: @admin_biography.message
    check "Visible" if @admin_biography.visible
    click_on "Create Biography"

    assert_text "Biography was successfully created"
    click_on "Back"
  end

  test "updating a Biography" do
    visit admin_biographies_url
    click_on "Edit", match: :first

    fill_in "Message", with: @admin_biography.message
    check "Visible" if @admin_biography.visible
    click_on "Update Biography"

    assert_text "Biography was successfully updated"
    click_on "Back"
  end

  test "destroying a Biography" do
    visit admin_biographies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Biography was successfully destroyed"
  end
end
