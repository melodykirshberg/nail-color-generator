require "application_system_test_case"

class PolishesTest < ApplicationSystemTestCase
  setup do
    @polish = polishes(:one)
  end

  test "visiting the index" do
    visit polishes_url
    assert_selector "h1", text: "Polishes"
  end

  test "creating a Polish" do
    visit polishes_url
    click_on "New Polish"

    click_on "Create Polish"

    assert_text "Polish was successfully created"
    click_on "Back"
  end

  test "updating a Polish" do
    visit polishes_url
    click_on "Edit", match: :first

    click_on "Update Polish"

    assert_text "Polish was successfully updated"
    click_on "Back"
  end

  test "destroying a Polish" do
    visit polishes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Polish was successfully destroyed"
  end
end
