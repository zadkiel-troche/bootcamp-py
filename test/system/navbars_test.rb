require "application_system_test_case"

class NavbarsTest < ApplicationSystemTestCase
  setup do
    @navbar = navbars(:one)
  end

  test "visiting the index" do
    visit navbars_url
    assert_selector "h1", text: "Navbars"
  end

  test "should create navbar" do
    visit navbars_url
    click_on "New navbar"

    fill_in "Id", with: @navbar.id
    fill_in "Label", with: @navbar.label
    fill_in "Url", with: @navbar.url
    click_on "Create Navbar"

    assert_text "Navbar was successfully created"
    click_on "Back"
  end

  test "should update Navbar" do
    visit navbar_url(@navbar)
    click_on "Edit this navbar", match: :first

    fill_in "Id", with: @navbar.id
    fill_in "Label", with: @navbar.label
    fill_in "Url", with: @navbar.url
    click_on "Update Navbar"

    assert_text "Navbar was successfully updated"
    click_on "Back"
  end

  test "should destroy Navbar" do
    visit navbar_url(@navbar)
    click_on "Destroy this navbar", match: :first

    assert_text "Navbar was successfully destroyed"
  end
end
