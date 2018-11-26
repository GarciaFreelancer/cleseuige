require "application_system_test_case"

class FormersTest < ApplicationSystemTestCase
  setup do
    @former = formers(:one)
  end

  test "visiting the index" do
    visit formers_url
    assert_selector "h1", text: "Formers"
  end

  test "creating a Former" do
    visit formers_url
    click_on "New Former"

    fill_in "Description", with: @former.description
    fill_in "Email", with: @former.email
    fill_in "Name", with: @former.name
    fill_in "Phone Number", with: @former.phone_number
    click_on "Create Former"

    assert_text "Former was successfully created"
    click_on "Back"
  end

  test "updating a Former" do
    visit formers_url
    click_on "Edit", match: :first

    fill_in "Description", with: @former.description
    fill_in "Email", with: @former.email
    fill_in "Name", with: @former.name
    fill_in "Phone Number", with: @former.phone_number
    click_on "Update Former"

    assert_text "Former was successfully updated"
    click_on "Back"
  end

  test "destroying a Former" do
    visit formers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Former was successfully destroyed"
  end
end
