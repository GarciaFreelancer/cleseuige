require "application_system_test_case"

class ClasscoursesTest < ApplicationSystemTestCase
  setup do
    @classcourse = classcourses(:one)
  end

  test "visiting the index" do
    visit classcourses_url
    assert_selector "h1", text: "Classcourses"
  end

  test "creating a Classcourse" do
    visit classcourses_url
    click_on "New Classcourse"

    fill_in "Available", with: @classcourse.available
    fill_in "Course", with: @classcourse.course_id
    fill_in "Description", with: @classcourse.description
    fill_in "Former", with: @classcourse.former_id
    fill_in "Name", with: @classcourse.name
    fill_in "Period", with: @classcourse.period
    click_on "Create Classcourse"

    assert_text "Classcourse was successfully created"
    click_on "Back"
  end

  test "updating a Classcourse" do
    visit classcourses_url
    click_on "Edit", match: :first

    fill_in "Available", with: @classcourse.available
    fill_in "Course", with: @classcourse.course_id
    fill_in "Description", with: @classcourse.description
    fill_in "Former", with: @classcourse.former_id
    fill_in "Name", with: @classcourse.name
    fill_in "Period", with: @classcourse.period
    click_on "Update Classcourse"

    assert_text "Classcourse was successfully updated"
    click_on "Back"
  end

  test "destroying a Classcourse" do
    visit classcourses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Classcourse was successfully destroyed"
  end
end
