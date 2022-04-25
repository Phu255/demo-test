require "application_system_test_case"

class NabisTest < ApplicationSystemTestCase
  setup do
    @nabi = nabis(:one)
  end

  test "visiting the index" do
    visit nabis_url
    assert_selector "h1", text: "Nabis"
  end

  test "creating a Nabi" do
    visit nabis_url
    click_on "New Nabi"

    fill_in "Description", with: @nabi.description
    fill_in "Name", with: @nabi.name
    fill_in "Price", with: @nabi.price
    click_on "Create Nabi"

    assert_text "Nabi was successfully created"
    click_on "Back"
  end

  test "updating a Nabi" do
    visit nabis_url
    click_on "Edit", match: :first

    fill_in "Description", with: @nabi.description
    fill_in "Name", with: @nabi.name
    fill_in "Price", with: @nabi.price
    click_on "Update Nabi"

    assert_text "Nabi was successfully updated"
    click_on "Back"
  end

  test "destroying a Nabi" do
    visit nabis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nabi was successfully destroyed"
  end
end
