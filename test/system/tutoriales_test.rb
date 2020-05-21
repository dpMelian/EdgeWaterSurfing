require "application_system_test_case"

class TutorialesTest < ApplicationSystemTestCase
  setup do
    @tutoriale = tutoriales(:one)
  end

  test "visiting the index" do
    visit tutoriales_url
    assert_selector "h1", text: "Tutoriales"
  end

  test "creating a Tutoriale" do
    visit tutoriales_url
    click_on "New Tutoriale"

    fill_in "Body", with: @tutoriale.body
    fill_in "Level", with: @tutoriale.level
    fill_in "Title", with: @tutoriale.title
    fill_in "Url", with: @tutoriale.url
    click_on "Create Tutoriale"

    assert_text "Tutoriale was successfully created"
    click_on "Back"
  end

  test "updating a Tutoriale" do
    visit tutoriales_url
    click_on "Edit", match: :first

    fill_in "Body", with: @tutoriale.body
    fill_in "Level", with: @tutoriale.level
    fill_in "Title", with: @tutoriale.title
    fill_in "Url", with: @tutoriale.url
    click_on "Update Tutoriale"

    assert_text "Tutoriale was successfully updated"
    click_on "Back"
  end

  test "destroying a Tutoriale" do
    visit tutoriales_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tutoriale was successfully destroyed"
  end
end
