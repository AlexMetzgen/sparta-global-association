require "application_system_test_case"

class UserfilesTest < ApplicationSystemTestCase
  setup do
    @userfile = userfiles(:one)
  end

  test "visiting the index" do
    visit userfiles_url
    assert_selector "h1", text: "Userfiles"
  end

  test "creating a Userfile" do
    visit userfiles_url
    click_on "New Userfile"

    fill_in "Date Created", with: @userfile.date_created
    fill_in "Filename", with: @userfile.filename
    fill_in "Owner", with: @userfile.owner
    fill_in "Size", with: @userfile.size
    click_on "Create Userfile"

    assert_text "Userfile was successfully created"
    click_on "Back"
  end

  test "updating a Userfile" do
    visit userfiles_url
    click_on "Edit", match: :first

    fill_in "Date Created", with: @userfile.date_created
    fill_in "Filename", with: @userfile.filename
    fill_in "Owner", with: @userfile.owner
    fill_in "Size", with: @userfile.size
    click_on "Update Userfile"

    assert_text "Userfile was successfully updated"
    click_on "Back"
  end

  test "destroying a Userfile" do
    visit userfiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Userfile was successfully destroyed"
  end
end
