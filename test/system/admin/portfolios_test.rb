require "application_system_test_case"

class Admin::PortfoliosTest < ApplicationSystemTestCase
  setup do
    @admin_portfolio = admin_portfolios(:one)
  end

  test "visiting the index" do
    visit admin_portfolios_url
    assert_selector "h1", text: "Admin/Portfolios"
  end

  test "creating a Portfolio" do
    visit admin_portfolios_url
    click_on "New Admin/Portfolio"

    check "Active" if @admin_portfolio.active
    fill_in "Description", with: @admin_portfolio.description
    fill_in "Name", with: @admin_portfolio.name
    fill_in "Order", with: @admin_portfolio.order
    check "Show" if @admin_portfolio.show
    click_on "Create Portfolio"

    assert_text "Portfolio was successfully created"
    click_on "Back"
  end

  test "updating a Portfolio" do
    visit admin_portfolios_url
    click_on "Edit", match: :first

    check "Active" if @admin_portfolio.active
    fill_in "Description", with: @admin_portfolio.description
    fill_in "Name", with: @admin_portfolio.name
    fill_in "Order", with: @admin_portfolio.order
    check "Show" if @admin_portfolio.show
    click_on "Update Portfolio"

    assert_text "Portfolio was successfully updated"
    click_on "Back"
  end

  test "destroying a Portfolio" do
    visit admin_portfolios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Portfolio was successfully destroyed"
  end
end
