require "application_system_test_case"

class Admin::SportsTest < ApplicationSystemTestCase
  setup do
    @admin_sport = admin_sports(:one)
  end

  test "visiting the index" do
    visit admin_sports_url
    assert_selector "h1", text: "Admin/Sports"
  end

  test "creating a Sport" do
    visit admin_sports_url
    click_on "New Admin/Sport"

    fill_in "Description", with: @admin_sport.description
    fill_in "Name", with: @admin_sport.name
    fill_in "Order", with: @admin_sport.order
    check "Show" if @admin_sport.show
    click_on "Create Sport"

    assert_text "Sport was successfully created"
    click_on "Back"
  end

  test "updating a Sport" do
    visit admin_sports_url
    click_on "Edit", match: :first

    fill_in "Description", with: @admin_sport.description
    fill_in "Name", with: @admin_sport.name
    fill_in "Order", with: @admin_sport.order
    check "Show" if @admin_sport.show
    click_on "Update Sport"

    assert_text "Sport was successfully updated"
    click_on "Back"
  end

  test "destroying a Sport" do
    visit admin_sports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sport was successfully destroyed"
  end
end
